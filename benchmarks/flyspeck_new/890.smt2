[
4.0
,
6.35040
]
ID:x1
;
[
4.0
,
6.35040
]
ID:x2
;
[
4.0
,
6.35040
]
ID:x3
;
[
4.0
,
4.0
]
ID:x4
;
[
4.0
,
4.0
]
ID:x5
;
[
9.06010
,
10.47214904490
]
ID:x6
;
(
(
ID:not
(
(
ID:or
(
<
(
+
(
*
(
*
ID:x1
(
+
(
*
ID:x1
(
*
ID:x4
(
+
(
-
ID:x1
)
(
+
ID:x2
(
+
(
-
ID:x3
ID:x4
)
(
+
ID:x5
ID:x6
)
)
)
)
)
)
(
+
(
*
ID:x2
(
*
ID:x5
(
+
(
-
ID:x1
ID:x2
)
(
+
ID:x3
(
+
(
-
ID:x4
ID:x5
)
ID:x6
)
)
)
)
)
(
-
(
-
(
-
(
-
(
*
ID:x3
(
*
ID:x6
(
+
ID:x1
(
+
(
-
ID:x2
ID:x3
)
(
+
ID:x4
(
-
ID:x5
ID:x6
)
)
)
)
)
)
(
*
ID:x2
(
*
ID:x3
ID:x4
)
)
)
(
*
ID:x1
(
*
ID:x3
ID:x5
)
)
)
(
*
ID:x1
(
*
ID:x2
ID:x6
)
)
)
(
*
ID:x4
(
*
ID:x5
ID:x6
)
)
)
)
)
)
4.00
)
(
*
(
^
(
+
(
-
(
*
(
-
ID:x2
)
ID:x3
)
(
*
ID:x1
ID:x4
)
)
(
+
(
*
ID:x2
ID:x5
)
(
+
(
-
(
*
ID:x3
ID:x6
)
(
*
ID:x5
ID:x6
)
)
(
*
ID:x1
(
+
(
-
ID:x1
)
(
+
ID:x2
(
+
(
-
ID:x3
ID:x4
)
(
+
ID:x5
ID:x6
)
)
)
)
)
)
)
)
2.0
)
(
-
2.436210
)
)
)
0.00
)
(
<
(
+
(
*
ID:x1
(
*
ID:x4
(
+
(
-
ID:x1
)
(
+
ID:x2
(
+
(
-
ID:x3
ID:x4
)
(
+
ID:x5
ID:x6
)
)
)
)
)
)
(
+
(
*
ID:x2
(
*
ID:x5
(
+
(
-
ID:x1
ID:x2
)
(
+
ID:x3
(
+
(
-
ID:x4
ID:x5
)
ID:x6
)
)
)
)
)
(
-
(
-
(
-
(
-
(
*
ID:x3
(
*
ID:x6
(
+
ID:x1
(
+
(
-
ID:x2
ID:x3
)
(
+
ID:x4
(
-
ID:x5
ID:x6
)
)
)
)
)
)
(
*
ID:x2
(
*
ID:x3
ID:x4
)
)
)
(
*
ID:x1
(
*
ID:x3
ID:x5
)
)
)
(
*
ID:x1
(
*
ID:x2
ID:x6
)
)
)
(
*
ID:x4
(
*
ID:x5
ID:x6
)
)
)
)
)
0.00
)
)
)
)
)
(set-logic QF_NRA)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(declare-fun x3 () Real)
(declare-fun x4 () Real)
(declare-fun x5 () Real)
(declare-fun x6 () Real)
(assert (<= 4.0 x1))
(assert (<= x1 6.3504))
(assert (<= 4.0 x2))
(assert (<= x2 6.3504))
(assert (<= 4.0 x3))
(assert (<= x3 6.3504))
(assert (<= 4.0 x4))
(assert (<= x4 4.0))
(assert (<= 4.0 x5))
(assert (<= x5 4.0))
(assert (<= 9.0601 x6))
(assert (<= x6 10.4721490449))
(assert (not (or (< (+ (* (* x1 (+ (* x1 (* x4 (+ (- x1) (+ x2 (+ (- x3 x4) (+ x5 x6)))))) (+ (* x2 (* x5 (+ (- x1 x2) (+ x3 (+ (- x4 x5) x6))))) (- (- (- (- (* x3 (* x6 (+ x1 (+ (- x2 x3) (+ x4 (- x5 x6)))))) (* x2 (* x3 x4))) (* x1 (* x3 x5))) (* x1 (* x2 x6))) (* x4 (* x5 x6)))))) 4.0) (* (^ (+ (- (* (- x2) x3) (* x1 x4)) (+ (* x2 x5) (+ (- (* x3 x6) (* x5 x6)) (* x1 (+ (- x1) (+ x2 (+ (- x3 x4) (+ x5 x6)))))))) 2.0) (- 2.43621))) 0.0) (< (+ (* x1 (* x4 (+ (- x1) (+ x2 (+ (- x3 x4) (+ x5 x6)))))) (+ (* x2 (* x5 (+ (- x1 x2) (+ x3 (+ (- x4 x5) x6))))) (- (- (- (- (* x3 (* x6 (+ x1 (+ (- x2 x3) (+ x4 (- x5 x6)))))) (* x2 (* x3 x4))) (* x1 (* x3 x5))) (* x1 (* x2 x6))) (* x4 (* x5 x6))))) 0.0))))
(check-sat)
(exit)
