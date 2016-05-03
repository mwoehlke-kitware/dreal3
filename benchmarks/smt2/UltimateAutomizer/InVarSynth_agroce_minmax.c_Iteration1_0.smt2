(set-logic QF_NRA)
(set-info :source |
SMT script generated by Ultimate Automizer [1,2].
Ultimate Automizer is a software verifier for C programs that implements an
automata-based approach [3].
The commands in this SMT scripts are used for a constraint-based synthesis
of invariants [4].

2016-04-30, Matthias Heizmann (heizmann@informatik.uni-freiburg.de)


[1] http://http://ultimate.informatik.uni-freiburg.de/automizer/
[2] Matthias Heizmann, Daniel Dietsch, Marius Greitschus, Jan Leike,
Betim Musa, Claus Schätzle, Andreas Podelski: Ultimate Automizer with
Two-track Proofs - (Competition Contribution). TACAS 2016: 950-953
[3] Matthias Heizmann, Jochen Hoenicke, Andreas Podelski: Software Model
Checking for People Who Love Automata. CAV 2013:36-52
[4] Michael Colon, Sriram Sankaranarayanan, Henny Sipma: Linear Invariant
Generation Using Non-linear Constraint Solving. CAV 2003: 420-432

|)
(set-info :smt-lib-version 2.5)
(set-info :category "industrial")
(set-info :status sat)
(declare-fun liipp_0_c () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_1_c () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_2_c () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_3_c () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_4_c () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_5_c () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_6_c () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_7_c () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_8_c () Real)
(declare-fun liipp_8__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_8__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_8__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_8__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_8__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_8__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_9_c () Real)
(declare-fun liipp_9__ULTIMATE.start_main_~least~1 () Real)
(declare-fun |liipp_9__ULTIMATE.start_main_#res| () Real)
(declare-fun liipp_9__ULTIMATE.start_main_~input3~1 () Real)
(declare-fun liipp_9__ULTIMATE.start_main_~most~1 () Real)
(declare-fun liipp_9__ULTIMATE.start_main_~input1~1 () Real)
(declare-fun liipp_9__ULTIMATE.start_main_~input2~1 () Real)
(declare-fun liipp_10_replace_0 () Real)
(declare-fun liipp_10_replace_1 () Real)
(declare-fun liipp_10_replace_2 () Real)
(declare-fun liipp_10_replace_3 () Real)
(declare-fun liipp_10_replace_4 () Real)
(declare-fun liipp_10_replace_5 () Real)
(declare-fun liipp_11_replace_0 () Real)
(declare-fun liipp_11_replace_1 () Real)
(declare-fun liipp_11_replace_2 () Real)
(declare-fun liipp_11_replace_3 () Real)
(declare-fun liipp_11_replace_4 () Real)
(declare-fun liipp_11_replace_5 () Real)
(declare-fun motzkin_3003_0 () Real)
(declare-fun motzkin_3003_1 () Real)
(declare-fun motzkin_3003_2 () Real)
(declare-fun motzkin_3003_3 () Real)
(declare-fun motzkin_3003_4 () Real)
(declare-fun motzkin_3003_5 () Real)
(declare-fun motzkin_3003_6 () Real)
(declare-fun motzkin_3003_7 () Real)
(declare-fun motzkin_3003_8 () Real)
(declare-fun motzkin_3003_9 () Real)
(declare-fun motzkin_3003_10 () Real)
(declare-fun motzkin_3004_0 () Real)
(declare-fun motzkin_3004_1 () Real)
(declare-fun motzkin_3004_2 () Real)
(declare-fun motzkin_3004_3 () Real)
(declare-fun motzkin_3004_4 () Real)
(declare-fun motzkin_3004_5 () Real)
(declare-fun motzkin_3004_6 () Real)
(declare-fun motzkin_3004_7 () Real)
(declare-fun motzkin_3004_8 () Real)
(declare-fun motzkin_3004_9 () Real)
(declare-fun motzkin_3004_10 () Real)
(assert (and (>= motzkin_3003_0 0.0) (>= motzkin_3003_1 0.0) (>= motzkin_3003_2 0.0) (>= motzkin_3003_3 0.0) (>= motzkin_3003_4 0.0) (>= motzkin_3003_5 0.0) (>= motzkin_3003_6 0.0) (>= motzkin_3003_7 0.0) (>= motzkin_3003_8 0.0) (>= motzkin_3003_9 0.0) (>= motzkin_3003_10 0.0) (= (+ (* motzkin_3003_0 (- 1.0)) motzkin_3003_1 (* motzkin_3003_10 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ motzkin_3003_0 (* motzkin_3003_1 (- 1.0)) motzkin_3003_4 (* motzkin_3003_5 (- 1.0)) (* motzkin_3003_8 (- 1.0)) motzkin_3003_9 (* motzkin_3003_10 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3003_2 (- 1.0)) motzkin_3003_3 (* motzkin_3003_10 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3003_4 (- 1.0)) motzkin_3003_5 (* motzkin_3003_10 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ motzkin_3003_6 (* motzkin_3003_7 (- 1.0)) (* motzkin_3003_10 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (= (* motzkin_3003_10 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#res|) 0.0)) 0.0) (<= (+ (* motzkin_3003_2 3.0) (* motzkin_3003_3 (- 3.0)) (* motzkin_3003_6 (- 1.0)) motzkin_3003_7 (* motzkin_3003_8 2.0) (* motzkin_3003_9 (- 2.0)) (* motzkin_3003_10 (+ (* (- 1.0) liipp_4_c) 0.0))) 0.0) (or (< (+ (* motzkin_3003_2 3.0) (* motzkin_3003_3 (- 3.0)) (* motzkin_3003_6 (- 1.0)) motzkin_3003_7 (* motzkin_3003_8 2.0) (* motzkin_3003_9 (- 2.0)) (* motzkin_3003_10 (+ (* (- 1.0) liipp_4_c) 0.0))) 0.0) (> 0.0 0.0)) (>= motzkin_3004_0 0.0) (>= motzkin_3004_1 0.0) (>= motzkin_3004_2 0.0) (>= motzkin_3004_3 0.0) (>= motzkin_3004_4 0.0) (>= motzkin_3004_5 0.0) (>= motzkin_3004_6 0.0) (>= motzkin_3004_7 0.0) (>= motzkin_3004_8 0.0) (>= motzkin_3004_9 0.0) (>= motzkin_3004_10 0.0) (= (+ (* motzkin_3004_0 (- 1.0)) motzkin_3004_1 (* motzkin_3004_10 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ motzkin_3004_0 (* motzkin_3004_1 (- 1.0)) motzkin_3004_4 (* motzkin_3004_5 (- 1.0)) (* motzkin_3004_8 (- 1.0)) motzkin_3004_9 (* motzkin_3004_10 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3004_2 (- 1.0)) motzkin_3004_3 (* motzkin_3004_10 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3004_4 (- 1.0)) motzkin_3004_5 (* motzkin_3004_10 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ motzkin_3004_6 (* motzkin_3004_7 (- 1.0)) (* motzkin_3004_10 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (= (* motzkin_3004_10 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#res|) 0.0)) 0.0) (<= (+ (* motzkin_3004_2 3.0) (* motzkin_3004_3 (- 3.0)) (* motzkin_3004_6 (- 1.0)) motzkin_3004_7 (* motzkin_3004_8 2.0) (* motzkin_3004_9 (- 2.0)) (* motzkin_3004_10 (+ (* (- 1.0) liipp_5_c) 0.0))) 0.0) (or (< (+ (* motzkin_3004_2 3.0) (* motzkin_3004_3 (- 3.0)) (* motzkin_3004_6 (- 1.0)) motzkin_3004_7 (* motzkin_3004_8 2.0) (* motzkin_3004_9 (- 2.0))) 0.0) (> motzkin_3004_10 0.0))))
(declare-fun liipp_13_replace_0 () Real)
(declare-fun liipp_13_replace_1 () Real)
(declare-fun liipp_13_replace_2 () Real)
(declare-fun liipp_13_replace_3 () Real)
(declare-fun motzkin_3005_0 () Real)
(declare-fun motzkin_3005_1 () Real)
(declare-fun motzkin_3005_2 () Real)
(declare-fun motzkin_3005_3 () Real)
(declare-fun motzkin_3005_4 () Real)
(declare-fun motzkin_3005_5 () Real)
(declare-fun motzkin_3006_0 () Real)
(declare-fun motzkin_3006_1 () Real)
(declare-fun motzkin_3006_2 () Real)
(declare-fun motzkin_3006_3 () Real)
(declare-fun motzkin_3006_4 () Real)
(declare-fun motzkin_3006_5 () Real)
(assert (and (>= motzkin_3005_0 0.0) (>= motzkin_3005_1 0.0) (>= motzkin_3005_2 0.0) (>= motzkin_3005_3 0.0) (>= motzkin_3005_4 0.0) (>= motzkin_3005_5 0.0) (= (+ (* motzkin_3005_0 (- 1.0)) (* motzkin_3005_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ motzkin_3005_0 motzkin_3005_1 (* motzkin_3005_2 (- 1.0)) (* motzkin_3005_3 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3005_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (= (+ (* motzkin_3005_1 (- 1.0)) motzkin_3005_2 (* motzkin_3005_3 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3005_3 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3005_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3005_3 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3005_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3005_3 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3005_4 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3005_5 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3005_3 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3005_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (<= (+ (* motzkin_3005_0 (- 1.0)) (* motzkin_3005_3 (+ (* (- 1.0) liipp_0_c) 0.0)) (* motzkin_3005_4 (+ (* 1.0 liipp_4_c) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (or (< (+ (* motzkin_3005_0 (- 1.0)) (* motzkin_3005_3 (+ (* (- 1.0) liipp_0_c) 0.0)) (* motzkin_3005_5 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (> motzkin_3005_4 0.0)) (>= motzkin_3006_0 0.0) (>= motzkin_3006_1 0.0) (>= motzkin_3006_2 0.0) (>= motzkin_3006_3 0.0) (>= motzkin_3006_4 0.0) (>= motzkin_3006_5 0.0) (= (+ (* motzkin_3006_0 (- 1.0)) (* motzkin_3006_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ motzkin_3006_0 motzkin_3006_1 (* motzkin_3006_2 (- 1.0)) (* motzkin_3006_3 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3006_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (= (+ (* motzkin_3006_1 (- 1.0)) motzkin_3006_2 (* motzkin_3006_3 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3006_3 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3006_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3006_3 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3006_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3006_3 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3006_4 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3006_5 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3006_3 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3006_4 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (<= (+ (* motzkin_3006_0 (- 1.0)) (* motzkin_3006_3 (+ (* (- 1.0) liipp_1_c) 0.0)) (* motzkin_3006_4 (+ (* 1.0 liipp_4_c) 0.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (or (< (+ (* motzkin_3006_0 (- 1.0)) (* motzkin_3006_5 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (> (+ motzkin_3006_3 motzkin_3006_4) 0.0))))
(declare-fun liipp_14_replace_0 () Real)
(declare-fun liipp_14_replace_1 () Real)
(declare-fun liipp_14_replace_2 () Real)
(declare-fun liipp_14_replace_3 () Real)
(declare-fun motzkin_3007_0 () Real)
(declare-fun motzkin_3007_1 () Real)
(declare-fun motzkin_3007_2 () Real)
(declare-fun motzkin_3007_3 () Real)
(declare-fun motzkin_3007_4 () Real)
(declare-fun motzkin_3007_5 () Real)
(declare-fun motzkin_3008_0 () Real)
(declare-fun motzkin_3008_1 () Real)
(declare-fun motzkin_3008_2 () Real)
(declare-fun motzkin_3008_3 () Real)
(declare-fun motzkin_3008_4 () Real)
(declare-fun motzkin_3008_5 () Real)
(assert (and (>= motzkin_3007_0 0.0) (>= motzkin_3007_1 0.0) (>= motzkin_3007_2 0.0) (>= motzkin_3007_3 0.0) (>= motzkin_3007_4 0.0) (>= motzkin_3007_5 0.0) (= (+ (* motzkin_3007_0 (- 1.0)) (* motzkin_3007_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ motzkin_3007_0 (* motzkin_3007_1 (- 1.0)) motzkin_3007_2 (* motzkin_3007_3 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3007_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ motzkin_3007_1 (* motzkin_3007_2 (- 1.0)) (* motzkin_3007_3 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3007_3 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3007_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3007_3 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3007_4 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3007_5 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3007_3 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3007_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3007_3 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3007_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (<= (+ (* motzkin_3007_0 (- 1.0)) (* motzkin_3007_3 (+ (* (- 1.0) liipp_2_c) 0.0)) (* motzkin_3007_4 (+ (* 1.0 liipp_0_c) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (or (< (+ (* motzkin_3007_0 (- 1.0)) (* motzkin_3007_3 (+ (* (- 1.0) liipp_2_c) 0.0)) (* motzkin_3007_5 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (> motzkin_3007_4 0.0)) (>= motzkin_3008_0 0.0) (>= motzkin_3008_1 0.0) (>= motzkin_3008_2 0.0) (>= motzkin_3008_3 0.0) (>= motzkin_3008_4 0.0) (>= motzkin_3008_5 0.0) (= (+ (* motzkin_3008_0 (- 1.0)) (* motzkin_3008_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ motzkin_3008_0 (* motzkin_3008_1 (- 1.0)) motzkin_3008_2 (* motzkin_3008_3 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3008_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ motzkin_3008_1 (* motzkin_3008_2 (- 1.0)) (* motzkin_3008_3 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3008_3 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3008_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3008_3 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3008_4 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3008_5 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3008_3 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3008_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3008_3 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3008_4 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (<= (+ (* motzkin_3008_0 (- 1.0)) (* motzkin_3008_3 (+ (* (- 1.0) liipp_3_c) 0.0)) (* motzkin_3008_4 (+ (* 1.0 liipp_0_c) 0.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (or (< (+ (* motzkin_3008_0 (- 1.0)) (* motzkin_3008_5 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (> (+ motzkin_3008_3 motzkin_3008_4) 0.0))))
(declare-fun liipp_15_replace_0 () Real)
(declare-fun liipp_15_replace_1 () Real)
(declare-fun liipp_15_replace_2 () Real)
(declare-fun liipp_15_replace_3 () Real)
(declare-fun motzkin_3009_0 () Real)
(declare-fun motzkin_3009_1 () Real)
(declare-fun motzkin_3009_2 () Real)
(declare-fun motzkin_3009_3 () Real)
(declare-fun motzkin_3010_0 () Real)
(declare-fun motzkin_3010_1 () Real)
(declare-fun motzkin_3010_2 () Real)
(declare-fun motzkin_3010_3 () Real)
(assert (and (>= motzkin_3009_0 0.0) (>= motzkin_3009_1 0.0) (>= motzkin_3009_2 0.0) (>= motzkin_3009_3 0.0) (= (+ motzkin_3009_0 (* motzkin_3009_1 (+ (* (- 1.0) liipp_8__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3009_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (= (+ (* motzkin_3009_0 (- 1.0)) (* motzkin_3009_1 (+ (* (- 1.0) liipp_8__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3009_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3009_1 (+ (* (- 1.0) liipp_8__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3009_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3009_1 (+ (* (- 1.0) liipp_8__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3009_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3009_1 (+ (* (- 1.0) |liipp_8__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3009_2 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3009_3 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3009_1 (+ (* (- 1.0) liipp_8__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3009_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (<= (+ (* motzkin_3009_1 (+ (* (- 1.0) liipp_8_c) 0.0)) (* motzkin_3009_2 (+ (* 1.0 liipp_2_c) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3_c) 0.0))) 0.0) (or (< (+ (* motzkin_3009_1 (+ (* (- 1.0) liipp_8_c) 0.0)) (* motzkin_3009_3 (+ (* 1.0 liipp_3_c) 0.0))) 0.0) (> motzkin_3009_2 0.0)) (>= motzkin_3010_0 0.0) (>= motzkin_3010_1 0.0) (>= motzkin_3010_2 0.0) (>= motzkin_3010_3 0.0) (= (+ motzkin_3010_0 (* motzkin_3010_1 (+ (* (- 1.0) liipp_9__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3010_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3010_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (= (+ (* motzkin_3010_0 (- 1.0)) (* motzkin_3010_1 (+ (* (- 1.0) liipp_9__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3010_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3010_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3010_1 (+ (* (- 1.0) liipp_9__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3010_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3010_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3010_1 (+ (* (- 1.0) liipp_9__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3010_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3010_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3010_1 (+ (* (- 1.0) |liipp_9__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3010_2 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3010_3 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3010_1 (+ (* (- 1.0) liipp_9__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3010_2 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3010_3 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (<= (+ (* motzkin_3010_1 (+ (* (- 1.0) liipp_9_c) 0.0)) (* motzkin_3010_2 (+ (* 1.0 liipp_2_c) 0.0)) (* motzkin_3010_3 (+ (* 1.0 liipp_3_c) 0.0))) 0.0) (or (< (* motzkin_3010_3 (+ (* 1.0 liipp_3_c) 0.0)) 0.0) (> (+ motzkin_3010_1 motzkin_3010_2) 0.0))))
(declare-fun liipp_16_replace_0 () Real)
(declare-fun liipp_16_replace_1 () Real)
(declare-fun liipp_16_replace_2 () Real)
(declare-fun liipp_16_replace_3 () Real)
(declare-fun motzkin_3011_0 () Real)
(declare-fun motzkin_3011_1 () Real)
(declare-fun motzkin_3011_2 () Real)
(declare-fun motzkin_3011_3 () Real)
(declare-fun motzkin_3011_4 () Real)
(declare-fun motzkin_3011_5 () Real)
(declare-fun motzkin_3012_0 () Real)
(declare-fun motzkin_3012_1 () Real)
(declare-fun motzkin_3012_2 () Real)
(declare-fun motzkin_3012_3 () Real)
(declare-fun motzkin_3012_4 () Real)
(declare-fun motzkin_3012_5 () Real)
(assert (and (>= motzkin_3011_0 0.0) (>= motzkin_3011_1 0.0) (>= motzkin_3011_2 0.0) (>= motzkin_3011_3 0.0) (>= motzkin_3011_4 0.0) (>= motzkin_3011_5 0.0) (= (+ (* motzkin_3011_0 (- 1.0)) motzkin_3011_1 (* motzkin_3011_2 (- 1.0)) (* motzkin_3011_3 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3011_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ motzkin_3011_0 (* motzkin_3011_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3011_1 (- 1.0)) motzkin_3011_2 (* motzkin_3011_3 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3011_3 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3011_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3011_3 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3011_4 (+ (* 1.0 |liipp_8__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3011_5 (+ (* 1.0 |liipp_9__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3011_3 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3011_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3011_3 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3011_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (<= (+ (* motzkin_3011_0 (- 1.0)) (* motzkin_3011_3 (+ (* (- 1.0) liipp_6_c) 0.0)) (* motzkin_3011_4 (+ (* 1.0 liipp_8_c) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9_c) 0.0))) 0.0) (or (< (+ (* motzkin_3011_0 (- 1.0)) (* motzkin_3011_3 (+ (* (- 1.0) liipp_6_c) 0.0)) (* motzkin_3011_5 (+ (* 1.0 liipp_9_c) 0.0))) 0.0) (> motzkin_3011_4 0.0)) (>= motzkin_3012_0 0.0) (>= motzkin_3012_1 0.0) (>= motzkin_3012_2 0.0) (>= motzkin_3012_3 0.0) (>= motzkin_3012_4 0.0) (>= motzkin_3012_5 0.0) (= (+ (* motzkin_3012_0 (- 1.0)) motzkin_3012_1 (* motzkin_3012_2 (- 1.0)) (* motzkin_3012_3 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3012_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ motzkin_3012_0 (* motzkin_3012_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3012_1 (- 1.0)) motzkin_3012_2 (* motzkin_3012_3 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3012_3 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3012_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3012_3 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3012_4 (+ (* 1.0 |liipp_8__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3012_5 (+ (* 1.0 |liipp_9__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3012_3 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3012_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3012_3 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3012_4 (+ (* 1.0 liipp_8__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (<= (+ (* motzkin_3012_0 (- 1.0)) (* motzkin_3012_3 (+ (* (- 1.0) liipp_7_c) 0.0)) (* motzkin_3012_4 (+ (* 1.0 liipp_8_c) 0.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9_c) 0.0))) 0.0) (or (< (+ (* motzkin_3012_0 (- 1.0)) (* motzkin_3012_5 (+ (* 1.0 liipp_9_c) 0.0))) 0.0) (> (+ motzkin_3012_3 motzkin_3012_4) 0.0))))
(declare-fun liipp_17_replace_0 () Real)
(declare-fun liipp_17_replace_1 () Real)
(declare-fun liipp_17_replace_2 () Real)
(declare-fun liipp_17_replace_3 () Real)
(declare-fun motzkin_3013_0 () Real)
(declare-fun motzkin_3013_1 () Real)
(declare-fun motzkin_3013_2 () Real)
(assert (and (>= motzkin_3013_0 0.0) (>= motzkin_3013_1 0.0) (>= motzkin_3013_2 0.0) (= (+ motzkin_3013_0 (* motzkin_3013_1 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~least~1) 0.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~least~1) 0.0))) 0.0) (= (+ (* motzkin_3013_0 (- 1.0)) (* motzkin_3013_1 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~most~1) 0.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~most~1) 0.0))) 0.0) (= (+ (* motzkin_3013_1 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~input3~1) 0.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~input3~1) 0.0))) 0.0) (= (+ (* motzkin_3013_1 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_3013_2 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_3013_1 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~input1~1) 0.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~input1~1) 0.0))) 0.0) (= (+ (* motzkin_3013_1 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~input2~1) 0.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~input2~1) 0.0))) 0.0) (<= (+ (* motzkin_3013_0 (- 1.0)) (* motzkin_3013_1 (+ (* 1.0 liipp_6_c) 0.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7_c) 0.0))) 0.0) (or (< (+ (* motzkin_3013_0 (- 1.0)) (* motzkin_3013_2 (+ (* 1.0 liipp_7_c) 0.0))) 0.0) (> motzkin_3013_1 0.0))))
(assert (= liipp_9__ULTIMATE.start_main_~least~1 0))
(assert (= liipp_0__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_3__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_7__ULTIMATE.start_main_~input3~1 0))
(assert (= |liipp_4__ULTIMATE.start_main_#res| 0))
(assert (= liipp_7__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_3__ULTIMATE.start_main_~least~1 0))
(assert (= liipp_4__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_4__ULTIMATE.start_main_~input1~1 0))
(assert (= |liipp_5__ULTIMATE.start_main_#res| 0))
(assert (= liipp_8__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_9__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_0__ULTIMATE.start_main_~least~1 0))
(assert (= |liipp_6__ULTIMATE.start_main_#res| 0))
(assert (= liipp_1__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_5__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_5__ULTIMATE.start_main_~input1~1 0))
(assert (= |liipp_7__ULTIMATE.start_main_#res| 0))
(assert (= liipp_3__ULTIMATE.start_main_~most~1 0))
(assert (= liipp_3_c 0))
(assert (= liipp_2__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_5_c 0))
(assert (= liipp_6__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_8__ULTIMATE.start_main_~most~1 0))
(assert (= liipp_6__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_1_c 0))
(assert (= liipp_0__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_1__ULTIMATE.start_main_~least~1 0))
(assert (= |liipp_0__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_8__ULTIMATE.start_main_#res| 0))
(assert (= liipp_3__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_3__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_4__ULTIMATE.start_main_~least~1 0))
(assert (= liipp_7__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_8__ULTIMATE.start_main_~input1~1 0))
(assert (= |liipp_9__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#res| 0))
(assert (= liipp_0__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_4__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_8__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_9__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_8__ULTIMATE.start_main_~least~1 0))
(assert (= |liipp_2__ULTIMATE.start_main_#res| 0))
(assert (= liipp_1__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_1__ULTIMATE.start_main_~input3~1 0))
(assert (= liipp_2__ULTIMATE.start_main_~input1~1 0))
(assert (= liipp_4_c 0))
(assert (= |liipp_3__ULTIMATE.start_main_#res| 0))
(assert (= liipp_6__ULTIMATE.start_main_~input2~1 0))
(assert (= liipp_0_c 0))
(assert (= liipp_5__ULTIMATE.start_main_~least~1 0))
(assert (= liipp_2__ULTIMATE.start_main_~least~1 0))
(assert (or (= liipp_9__ULTIMATE.start_main_~most~1 0) (= liipp_5__ULTIMATE.start_main_~most~1 0) (= liipp_6_c 0) (= liipp_5__ULTIMATE.start_main_~input2~1 0)))
(assert (or (= liipp_8_c 0) (= liipp_6__ULTIMATE.start_main_~least~1 0) (= liipp_6_c 0) (= liipp_5__ULTIMATE.start_main_~most~1 0)))
(assert (or (= liipp_9__ULTIMATE.start_main_~input3~1 0) (= liipp_6__ULTIMATE.start_main_~most~1 0) (= liipp_5__ULTIMATE.start_main_~most~1 0) (= liipp_0__ULTIMATE.start_main_~most~1 0)))
(assert (or (= liipp_4__ULTIMATE.start_main_~most~1 0) (= liipp_9__ULTIMATE.start_main_~input3~1 0) (= liipp_2__ULTIMATE.start_main_~input3~1 0) (= liipp_5__ULTIMATE.start_main_~input2~1 0)))
(assert (or (= liipp_9__ULTIMATE.start_main_~most~1 0) (= liipp_1__ULTIMATE.start_main_~most~1 0) (= liipp_5__ULTIMATE.start_main_~input2~1 0) (= liipp_2_c 0)))
(assert (or (= liipp_7__ULTIMATE.start_main_~least~1 0) (= liipp_5__ULTIMATE.start_main_~most~1 0) (= liipp_8_c 0) (= liipp_2__ULTIMATE.start_main_~most~1 0)))
(assert (or (= liipp_9_c 0) (= liipp_6__ULTIMATE.start_main_~most~1 0) (= liipp_5__ULTIMATE.start_main_~input2~1 0) (= liipp_6__ULTIMATE.start_main_~least~1 0)))
(assert (or (= liipp_7_c 0) (= liipp_0__ULTIMATE.start_main_~most~1 0) (= liipp_4__ULTIMATE.start_main_~most~1 0) (= liipp_2_c 0)))
(assert (or (= liipp_7_c 0) (= liipp_8_c 0) (= liipp_9_c 0) (= liipp_9__ULTIMATE.start_main_~input3~1 0)))
(assert (or (= liipp_2__ULTIMATE.start_main_~input3~1 0) (= liipp_0__ULTIMATE.start_main_~most~1 0) (= liipp_2__ULTIMATE.start_main_~most~1 0) (= liipp_4__ULTIMATE.start_main_~most~1 0)))
(check-sat)
(exit)