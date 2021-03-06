/*********************************************************************
Author: Roberto Bruttomesso <roberto.bruttomesso@gmail.com>

OpenSMT -- Copyright (C) 2010, Roberto Bruttomesso

OpenSMT is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

OpenSMT is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with OpenSMT. If not, see <http://www.gnu.org/licenses/>.
*********************************************************************/

#ifndef SMTCOMP

#include "smtsolvers/CoreSMTSolver.h"

#ifdef PRODUCE_PROOF
#include "Proof.h"
#include <sys/wait.h>
#endif

using std::cerr;
using std::endl;

void CoreSMTSolver::dumpRndInter( )
{
  const char * name = "rnd_inter.smt2";
  std::ofstream dump_out( name );
  egraph.dumpHeaderToFile( dump_out );

  int i_c = 0, i_t = 0;
  int step_c = clauses.size( )/(config.sat_dump_rnd_inter+1), limit_c = 0;
  int step_t = trail.size( )/(config.sat_dump_rnd_inter+1), limit_t = 0;
  //
  // Dump from first to last but one
  //
  for ( int part = 1 ; part <= config.sat_dump_rnd_inter ; part ++ )
  {
    limit_c += step_c;
    limit_t += step_t;
    dump_out << "; Partition " << part << endl;
    dump_out << "(assert" << endl;
    dump_out << "(and" << endl;

    for ( ; i_c < limit_c ; i_c ++ )
    {
      Clause & c = *clauses[ i_c ];

      if ( c.mark( ) == 1 )
        continue;

      printSMTClause( dump_out, c );
      dump_out << endl;
    }
    //
    // Also dump the trail which contains clauses of size 1
    //
    for ( ; i_t < limit_t ; i_t ++ )
    {
      Var v = var(trail[i_t]);
      if ( v <= 1 ) continue;
      Enode * e = theory_handler->varToEnode( v );
      dump_out << (sign(trail[i_t])?"(not ":" ") << e << (sign(trail[i_t])?") ":" ") << endl;
    }

    dump_out << "))" << endl;
  }
  //
  // Dump last
  //
  dump_out << "; Partition " << config.sat_dump_rnd_inter + 1 << endl;
  dump_out << "(assert" << endl;
  dump_out << "(and" << endl;

  for ( ; i_c < clauses.size( ) ; i_c ++ )
  {
    Clause & c = *clauses[ i_c ];

    if ( c.mark( ) == 1 )
      continue;

    printSMTClause( dump_out, c );
    dump_out << endl;
  }
  //
  // Also dump the trail which contains clauses of size 1
  //
  for ( ; i_t < trail.size( ) ; i_t ++ )
  {
    Var v = var(trail[i_t]);
    if ( v <= 1 ) continue;
    Enode * e = theory_handler->varToEnode( v );
    dump_out << (sign(trail[i_t])?"(not ":" ") << e << (sign(trail[i_t])?") ":" ") << endl;
  }
  dump_out << "))" << endl;
  //
  // Add Check sat
  //
  dump_out << "(check-sat)" << endl;
  dump_out << "(get-interpolants)" << endl;
  dump_out << "(exit)" << endl;

  dump_out.close( );
  cerr << "[Dumped " << name << "]" << endl;
  exit( 0 );
}

#ifdef PRODUCE_PROOF

Proof::Proof( )
  : begun     ( false )
  , chain_cla ( NULL )
  , chain_var ( NULL )
  , last_added( NULL )
{ }

Proof::~Proof( )
{
  // Remove derivation for false
  if ( clause_to_proof_der.find( NULL ) != clause_to_proof_der.end( ) )
    delete clause_to_proof_der[ NULL ];
}

//
// Allocates the necessary structures to track
// the derivation of this clause c
//
void Proof::addRoot( Clause * c, clause_type_t t )
{
  assert( c );
  assert( checkState( ) );
  assert( t == CLA_ORIG || t == CLA_LEARNT || t == CLA_THEORY );
  // Do nothing. Just complies with previous interface
  ProofDer * d = new ProofDer( );
  d->chain_cla = new vector< Clause * >;
  d->chain_var = new vector< Var >;
  // Not yet referenced
  d->ref = 0;
  d->type = t;
  assert( clause_to_proof_der.find( c ) == clause_to_proof_der.end( ) );
  clause_to_proof_der[ c ] = d;
  last_added = c;
}

//
// This is the beginning of a derivation chain.
//
void Proof::beginChain( Clause * c )
{
  assert( c );
  assert( !begun );
  begun = true;
  assert( chain_cla == NULL );
  assert( chain_var == NULL );
  // Allocates the temporary store for the chain of clauses and variables
  chain_cla = new vector< Clause * >;
  chain_var = new vector< Var >;
  // Sets the first clause of the chain
  chain_cla->push_back( c );
  assert( clause_to_proof_der.find( c ) != clause_to_proof_der.end( ) );
  // Increase reference
  clause_to_proof_der[ c ]->ref ++;
}

//
// Store a resolution step with chain_cla.back( ) and c
// on the pivot variable p
//
void Proof::resolve( Clause * c, Var p )
{
  assert( c );
  chain_cla->push_back( c );
  chain_var->push_back( p );
  assert( clause_to_proof_der.find( c ) != clause_to_proof_der.end( ) );
  // Increase reference
  clause_to_proof_der[ c ]->ref ++;
}

//
// This is called when we need to throw away the
// temporary chains of resolution steps accumulated
// for the last clause
//
void Proof::endChain( )
{
  assert( begun );
  begun = false;
  assert( chain_cla );
  assert( chain_var );
  delete chain_cla;
  delete chain_var;
  chain_var = NULL;
  chain_cla = NULL;
}

//
// Finalize the temporary chain
// NULL is the empty clause
//
void Proof::endChain( Clause * res )
{
  assert( begun );
  begun = false;
  // There was no chain (only the first clause was stored)
  if ( chain_cla->size( ) == 1 )
  {
    // The first clause was not touched
    if ( (*chain_cla)[0] == res )
    {
      // Do nothing
      assert( clause_to_proof_der.find( res ) != clause_to_proof_der.end( ) );
      last_added = res;
      delete chain_cla;
      delete chain_var;
      // Reset temporary chains
      chain_cla = NULL;
      chain_var = NULL;
      return;
    }
    // Otherwise we have to link the proof of this clause
    // with the proof of clause (*chain_cla)[0]
    // Also we should check that res and (*chain_cla)[0] are
    // semantically equivalent clauses -- we don't do it we
    // take it for granted !
    // Use same proof der of (*chain_cla)[0]

    // (*chain_cla)[0] is referenced by this
    clause_to_proof_der[ (*chain_cla)[0] ]->ref ++;
    assert( clause_to_proof_der.find( res ) == clause_to_proof_der.end( ) );
    ProofDer * d = new ProofDer( );
    assert( chain_cla );
    assert( chain_var );
    d->chain_cla = chain_cla;
    d->chain_var = NULL;
    d->type = clause_to_proof_der[ (*chain_cla)[0] ]->type;
    delete chain_var;
    // Not yet referenced
    d->ref = 0;
    clause_to_proof_der[ res ] = d;
    last_added = res;
    chain_cla = NULL;
    chain_var = NULL;
    return;
  }
  // Otherwise there was a derivation chain
  // Save the temporary derivation chain in a new
  // derivation structure
  ProofDer * d = new ProofDer( );
  assert( chain_cla );
  assert( chain_var );
  d->chain_cla = chain_cla;
  d->chain_var = chain_var;
  d->type = CLA_LEARNT;
  d->ref = 0;
  assert( clause_to_proof_der.find( res ) == clause_to_proof_der.end( ) );
  // Create association between res and it's derivation chain
  clause_to_proof_der[ res ] = d;
  last_added = res;
  chain_cla = NULL;
  chain_var = NULL;
}

bool Proof::deleted( Clause * c )
{
  // Never remove units
  if ( c->size( ) == 1 ) return false;
  assert( clause_to_proof_der.find( c ) != clause_to_proof_der.end( ) );
  ProofDer * d = clause_to_proof_der[ c ];
  assert( d );
  assert( d->ref >= 0 );
  // This clause is still used somewhere else, keep it
  if ( d->ref > 0 ) return false;
  // Dereference parents
  for ( unsigned i = 0 ; i < d->chain_cla->size( ) ; i ++ )
  {
    // Dereference of one
    if( clause_to_proof_der.find( (*(d->chain_cla))[i] ) == clause_to_proof_der.end( ) )
      continue;
    ProofDer * dc = clause_to_proof_der[ (*(d->chain_cla))[i] ];
    dc->ref --;
  }
  assert( d->ref == 0 );
  // Remove clause (normally is done in CoreSMTSolver::removeClause( ... ) )
  free( c );
  // Remove derivation
  delete d;
  // Remove correspondence
  clause_to_proof_der.erase( c );
  // Completely removed
  return true;
}

void Proof::forceDelete( Clause * c, const bool deref )
{
  assert( clause_to_proof_der.find( c ) != clause_to_proof_der.end( ) );
  ProofDer * d = clause_to_proof_der[ c ];
  assert( d );
  if ( deref )
  {
    for ( unsigned i = 0 ; i < d->chain_cla->size( ) ; i ++ )
    {
      // Dereference of one
      // assert( clause_to_proof_der.find( (*(d->chain_cla))[i] ) != clause_to_proof_der.end( ) );
      // Already removed previously
      if( clause_to_proof_der.find( (*(d->chain_cla))[i] ) == clause_to_proof_der.end( ) )
        continue;
      ProofDer * dc = clause_to_proof_der[ (*(d->chain_cla))[i] ];
      dc->ref --;
    }
  }
  free( c );
  delete d;
  clause_to_proof_der.erase( c );
}

// Still stubs
void Proof::pushBacktrackPoint( ) { }
void Proof::popBacktrackPoint( )  { }
void Proof::reset( )              { }

void Proof::print( ostream & out, CoreSMTSolver & s, THandler & t )
{
  if ( clause_to_proof_der.find( NULL ) == clause_to_proof_der.end( ) )
    opensmt_error( "there is no proof of false" );

  out << "(proof " << endl;

  int nof_lets = 0;

  vector< Clause * > unprocessed;
  unprocessed.push_back( NULL );
  set< Clause * > cache;
  set< Clause * > core;

  while( !unprocessed.empty( ) )
  {
    Clause * c = unprocessed.back( );
    // Skip already seen
    if ( cache.find( c ) != cache.end( ) )
    {
      unprocessed.pop_back( );
      continue;
    }
    assert( clause_to_proof_der.find( c ) != clause_to_proof_der.end( ) );
    ProofDer * d = clause_to_proof_der[ c ];

    // Special case in which there is not
    // a derivation but just an equivalence
    if ( d->chain_cla->size( ) == 1 )
    {
      // Say c is done
      cache.insert( c );
      // Move to equiv
      c = (*d->chain_cla)[0];
      // Retrieve derivation
      assert( clause_to_proof_der.find( c ) != clause_to_proof_der.end( ) );
      d = clause_to_proof_der[ c ];
    }
    assert( d->chain_cla->size( ) != 1 );
    // Look for unprocessed children
    bool unproc_children = false;
    for ( unsigned i = 0 ; i < d->chain_cla->size( ) ; i ++ )
    {
      Clause * cc = (*(d->chain_cla))[i];
      if ( cache.find( cc ) == cache.end( ) )
      {
        unproc_children = true;
        unprocessed.push_back( cc );
      }
    }
    // Depth first
    if ( unproc_children )
      continue;
    // Remove current
    unprocessed.pop_back( );

    if ( d->chain_cla->size( ) > 0 )
    {
      out << "; ";
      if ( c == NULL )
        out << "-";
      else
        s.printSMTClause( out, *c );
      out << endl;
      out << "(let (cls_" << c;
      nof_lets ++;

      vector< Clause * > & chain_cla = (*(d->chain_cla));
      vector< Var > & chain_var = (*(d->chain_var));

      assert( chain_cla.size( ) == chain_var.size( ) + 1 );

      for ( unsigned i = 1 ; i < chain_cla.size( ) ; i ++ )
        out << " (res";
      for ( unsigned ic = 1, iv = 0 ; iv < chain_var.size( ) ; ic ++, iv ++ )
      {
        if ( ic == 1 )
        {
          assert( iv == 0 );
          out << " cls_" << chain_cla[ 0 ]
              << " cls_" << chain_cla[ 1 ]
              << " " << t.varToEnode( chain_var[ 0 ] )
              << ")";
        }
        else
        {
          out << " cls_" << chain_cla[ ic ]
              << " " << t.varToEnode( chain_var[ iv ] )
              << ")";
        }
      }
      out << ")" << endl;
    }
    else
    {
      if ( d->type == CLA_ORIG )
        core.insert( c );
      else if ( d->type == CLA_THEORY ) { }
      else { }
      out << "(let (cls_" << c << " ";
      s.printSMTClause( out, *c );
      out << ")" << endl;
      nof_lets ++;
    }

    cache.insert( c );
  }

  out << "cls_0"  << endl;

  for ( int i = 0 ; i < nof_lets ; i ++ )
    out << ")";
  out << endl;

  out << ":core" << endl;
  out << "( ";
  for ( set< Clause * >::iterator it = core.begin( )
      ; it != core.end( )
      ; it ++ )
  {
    out << "cls_" << *it << " ";
  }
  out << ")" << endl;
  out << ")" << endl;
}

//=============================================================================
// The following functions are declared in CoreSMTSolver.h

// Gather mixed atoms in proof
void CoreSMTSolver::getMixedAtoms( set< Var > & mixed )
{
  set< Clause * > visited_set;
  vector< Clause * > unprocessed_clauses;
  map< Clause *, ProofDer * > & clause_to_proof_der = proof.getProof( );

  unprocessed_clauses.push_back( NULL );

  do
  {
    Clause * c = unprocessed_clauses.back( );
    unprocessed_clauses.pop_back( );

    // Clause not visited yet
    if( visited_set.find( c ) == visited_set.end( ) )
    {
      // Get clause derivation tree
      ProofDer & proofder = *(clause_to_proof_der[ c ]);
      // Clauses chain
      vector< Clause * > & chain_cla = *(proofder.chain_cla);
      clause_type_t ctype = proofder.type;

      // Mixed atoms may only appear within theory clauses
      if ( ctype == CLA_THEORY )
      {
        assert( chain_cla.size( ) == 0 );
        Clause & cla = *c;
        for (int i = 0; i < cla.size(); i++)
        {
          Var v = var(cla[i]);
          if ( v <= 1 ) continue;
          Enode * e = theory_handler->varToEnode( v );
          assert( e->isTAtom( ) );
          // Insert if it has mixed partitions
          if ( (egraph.getIPartitions( e ) % 2) == 1 )
            mixed.insert( v );
        }
      }
      // Link clause
      else if ( chain_cla.size( ) == 1 )
      {
        if ( visited_set.find( chain_cla[ 0 ] ) == visited_set.end( ) )
          unprocessed_clauses.push_back( chain_cla[ 0 ] );
      }
      // Clauses in the derivation chain not yet visited have to be visited
      else
      {
        assert( chain_cla.size( ) );
        for ( size_t i = 0 ; i < chain_cla.size( ) ; i ++ )
          if ( visited_set.find( chain_cla[ i ] ) == visited_set.end( ) )
            unprocessed_clauses.push_back( chain_cla[ i ] );
      }

      // Mark clause as visited
      visited_set.insert( c );
    }
  }
  while( !unprocessed_clauses.empty( ) );
}

void CoreSMTSolver::printProof( ostream & out )
{
  proof.print( out, *this, *theory_handler );

  ProofGraph graph( config
                  , *this
                  , theory_handler
                  , egraph
                  , proof
                  , axioms_ids
                  , NULL
                  , NULL
                  , nVars( ) );

  // Enable flag
  config.produce_proofs=1;
  graph.handleProof();
}

void CoreSMTSolver::printInter( ostream & )
{
  assert( config.produce_inter != 0 );

  ProofGraph graph( config
                  , *this
                  , theory_handler
                  , egraph
                  , proof
                  , axioms_ids
                  , NULL
                  , NULL
                  , nVars( ) );

  graph.handleProof( );

  // Compute interpolants
  vector< Enode * > sequence_of_interpolants;
  // Choose symmetric or McMillan's
  graph.produceSequenceInterpolants( sequence_of_interpolants, config.proof_use_sym_inter );
  ostream & out = config.getRegularOut( );
  for( size_t i = 0 ; i < sequence_of_interpolants.size( ) ; i ++ )
  {
    egraph.dumpFormulaToFile( out, sequence_of_interpolants[ i ] );
    // out << sequence_of_interpolants[ i ] << endl;
  }

  if ( config.proof_certify_inter > 0 )
  {
    if ( config.verbosity > 1 )
      cerr << "# Certifying interpolant ... ";
    verifyInterpolantWithExternalTool( sequence_of_interpolants );
    if ( config.verbosity > 1 )
      cerr << "OK" << endl;
  }
}

void CoreSMTSolver::verifyInterpolantWithExternalTool( vector< Enode * > & interpolants )
{
  uint64_t mask = 0xFFFFFFFFFFFFFFFEULL;
  for ( unsigned in = 1 ; in < egraph.getNofPartitions( ) ; in ++ )
  {
    Enode * interp = interpolants[ in ];
    mask &= ~SETBIT( in );
    // Check A -> I, i.e., A & !I
    // First stage: print declarations
    const char * name = "/tmp/verifyinterp.smt2";
    ofstream dump_out( name );
    egraph.dumpHeaderToFile( dump_out );
    // Print only A atoms
    dump_out << "(assert " << endl;
    dump_out << "(and" << endl;
    for ( int i = 0 ; i < clauses.size( ) ; i ++ )
    {
      assert( (getIPartitions( clauses[ i ] ) &  mask) != 0
           || (getIPartitions( clauses[ i ] ) & ~mask) != 0 );
      if ( (getIPartitions( clauses[ i ] ) & ~mask) != 0 )
      {
        printSMTClause( dump_out, *clauses[ i ] );
        dump_out << endl;
      }
    }
    for ( size_t i = 0 ; i < units_and_partition.size( ) ; i ++ )
    {
      assert( (units_and_partition[ i ].second &  mask) != 0
           || (units_and_partition[ i ].second & ~mask) != 0 );
      if ( (units_and_partition[ i ].second & ~mask) != 0 )
      {
        printSMTClause( dump_out, *(units_and_partition[ i ].first) );
        dump_out << endl;
      }
    }
    dump_out << "))" << endl;
    egraph.dumpFormulaToFile( dump_out, interp, true );
    dump_out << "(check-sat)" << endl;
    dump_out << "(exit)" << endl;
    dump_out.close( );
    // Check !
    bool tool_res;
    if ( int pid = fork() )
    {
      int status;
      waitpid(pid, &status, 0);
      switch ( WEXITSTATUS( status ) )
      {
        case 0:
          tool_res = false;
          break;
        case 1:
          tool_res = true;
          break;
        default:
          perror( "# Error: Certifying solver returned weird answer (should be 0 or 1)" );
          exit( EXIT_FAILURE );
      }
    }
    else
    {
      execlp( config.certifying_solver
            , config.certifying_solver
            , name
            , 0 );
      perror( "# Error: Cerifying solver had some problems (check that it is reachable and executable)" );
      exit( EXIT_FAILURE );
    }

    if ( tool_res == true )
      opensmt_error( "external tool says A -> I does not hold" );
    // Now check B & I
    dump_out.open( name );
    egraph.dumpHeaderToFile( dump_out );
    // Print only B atoms
    dump_out << "(assert " << endl;
    dump_out << "(and" << endl;
    for ( int i = 0 ; i < clauses.size( ) ; i ++ )
    {
      assert( (getIPartitions( clauses[ i ] ) &  mask) != 0
           || (getIPartitions( clauses[ i ] ) & ~mask) != 0 );
      if ( (getIPartitions( clauses[ i ] ) & mask) != 0 )
      {
        printSMTClause( dump_out, *clauses[ i ] );
        dump_out << endl;
      }
    }
    for ( size_t i = 0 ; i < units_and_partition.size( ) ; i ++ )
    {
      assert( (units_and_partition[ i ].second &  mask) != 0
           || (units_and_partition[ i ].second & ~mask) != 0 );
      if ( (units_and_partition[ i ].second & mask) != 0 )
      {
        printSMTClause( dump_out, *(units_and_partition[ i ].first) );
        dump_out << endl;
      }
    }
    dump_out << "))" << endl;
    egraph.dumpFormulaToFile( dump_out, interp );
    dump_out << "(check-sat)" << endl;
    dump_out << "(exit)" << endl;
    dump_out.close( );
    // Check !
    if ( int pid = fork() )
    {
      int status;
      waitpid(pid, &status, 0);
      switch ( WEXITSTATUS( status ) )
      {
        case 0:
          tool_res = false;
          break;
        case 1:
          tool_res = true;
          break;
        default:
          perror( "# Error: Certifying solver returned weird answer (should be 0 or 1)" );
          exit( EXIT_FAILURE );
      }
    }
    else
    {
      execlp( config.certifying_solver
            , config.certifying_solver
            , name
            , 0 );
      perror( "# Error: Cerifying solver had some problems (check that it is reachable and executable)" );
      exit( 1 );
    }
    if ( tool_res == true )
      opensmt_error( "external tool says B & I does hold" );
  }
}

void CoreSMTSolver::mixedVarDecActivity( )
{
  if( config.produce_inter > 0)
  {
    for (int i = 2; i < nVars(); i++)
    {
      Enode * e = theory_handler->varToEnode( i );
      if ( !e->isVar( ) && egraph.getIPartitions( e ) % 2 == 1 )
      {
        activity[i] -= config.produce_inter > 0 ? 1 : 0;
        // Update order_heap with respect to new activity:
        if (order_heap.inHeap(i))
          order_heap.decrease(i);
      }
    }
  }
}
#endif

#endif
