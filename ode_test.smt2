(set-logic QF_NRA_ODE)
(declare-fun time () Real)
(declare-fun u_1_1_0 () Real)
(declare-fun v_1_1_0 () Real)
(declare-fun w_1_1_0 () Real)
(declare-fun s_1_1_0 () Real)
(declare-fun u_1_1_t () Real)
(declare-fun v_1_1_t () Real)
(declare-fun w_1_1_t () Real)
(declare-fun s_1_1_t () Real)

(define-ode (= d/dt[u_1_1] 1 )) 

(define-ode ( = d/dt[v_1_1]  ( ( 0.0- v_1_1)* 0.68936)))

(define-ode (= d/dt[w_1_1]  ( ( 0.0- w_1_1)* 0.005)))

(define-ode (= d/dt[s_1_1] 1)) 


(assert (<= time 3.5))
(assert (<= 3.0 time))

(assert (<= u_1_1_0 10))
(assert (>= u_1_1_0 -10))

(assert (<= u_1_1_t 10))
(assert (>= u_1_1_t -10))


(assert (<= v_1_1_0 10))
(assert (>= v_1_1_0 -10))


(assert (<= v_1_1_t 10))
(assert (>= v_1_1_t -10))


(assert (<= w_1_1_0 10))
(assert (>= w_1_1_0 -10))


(assert (<= w_1_1_t 10))
(assert (>= w_1_1_t -10))


(assert (<= s_1_1_0 10))
(assert (>= s_1_1_0 -10))


(assert (<= s_1_1_t 10))
(assert (>= s_1_1_t -10))

(assert
    (and 
	(= u_1_1_0 0)
	(= v_1_1_0 0)
	(= w_1_1_0 0)
	(= s_1_1_0 0)
	(= u_1_1_t 1)
	(= v_1_1_t 1)
	(= w_1_1_t 1)
	(= s_1_1_t 1)
    )
)
(check-sat)
(exit)
