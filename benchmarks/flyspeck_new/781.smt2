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
6.35040
]
ID:x4
;
[
4.0
,
6.35040
]
ID:x5
;
[
4.0
,
6.35040
]
ID:x6
;
(
(
ID:not
(
(
<
(
+
(
*
(
+
(
/
3.14159265
2.00
)
(
ID:atn2
(
^
(
*
4.00
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
)
0.5
)
(
-
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
)
)
)
(
-
1.00
)
)
(
+
(
*
1.00
1.23080
)
(
+
(
*
(
^
ID:x2
0.5
)
(
-
0.36390
)
)
(
+
(
*
(
^
ID:x3
0.5
)
(
-
0.36390
)
)
(
+
(
*
(
^
ID:x5
0.5
)
(
-
0.36390
)
)
(
+
(
*
(
^
ID:x6
0.5
)
(
-
0.36390
)
)
(
+
(
*
1.00
(
*
0.36390
8.0
)
)
(
+
(
*
(
^
ID:x1
0.5
)
0.2350
)
(
+
(
*
1.00
(
*
0.2350
(
-
2.0
)
)
)
(
+
(
*
(
^
ID:x4
0.5
)
0.6850
)
(
*
1.00
(
*
0.6850
(
-
2.0
)
)
)
)
)
)
)
)
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
(assert (<= x4 6.3504))
(assert (<= 4.0 x5))
(assert (<= x5 6.3504))
(assert (<= 4.0 x6))
(assert (<= x6 6.3504))
(assert (not (< (+ (* (+ (/ 3.14159265 2.0) (arctan2 (^ (* 4.0 (* x1 (+ (* x1 (* x4 (+ (- x1) (+ x2 (+ (- x3 x4) (+ x5 x6)))))) (+ (* x2 (* x5 (+ (- x1 x2) (+ x3 (+ (- x4 x5) x6))))) (- (- (- (- (* x3 (* x6 (+ x1 (+ (- x2 x3) (+ x4 (- x5 x6)))))) (* x2 (* x3 x4))) (* x1 (* x3 x5))) (* x1 (* x2 x6))) (* x4 (* x5 x6))))))) 0.5) (- (+ (- (* (- x2) x3) (* x1 x4)) (+ (* x2 x5) (+ (- (* x3 x6) (* x5 x6)) (* x1 (+ (- x1) (+ x2 (+ (- x3 x4) (+ x5 x6))))))))))) (- 1.0)) (+ (* 1.0 1.2308) (+ (* (^ x2 0.5) (- 0.3639)) (+ (* (^ x3 0.5) (- 0.3639)) (+ (* (^ x5 0.5) (- 0.3639)) (+ (* (^ x6 0.5) (- 0.3639)) (+ (* 1.0 (* 0.3639 8.0)) (+ (* (^ x1 0.5) 0.235) (+ (* 1.0 (* 0.235 (- 2.0))) (+ (* (^ x4 0.5) 0.685) (* 1.0 (* 0.685 (- 2.0))))))))))))) 0.0)))
(check-sat)
(exit)
