[
8.0
,
9.0
]
ID:x1
;
[
4.28490
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
9.0
,
9.0
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
ID:or
(
<
(
+
(
*
(
^
ID:x1
0.5
)
2.750
)
(
+
(
*
1.00
(
*
(
^
8.00
0.5
)
(
-
2.750
)
)
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
1.00
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
1.00
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
1.00
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
1.00
)
)
(
*
1.00
7.990
)
)
)
)
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
(assert (<= 8.0 x1))
(assert (<= x1 9.0))
(assert (<= 4.2849 x2))
(assert (<= x2 6.3504))
(assert (<= 4.0 x3))
(assert (<= x3 6.3504))
(assert (<= 9.0 x4))
(assert (<= x4 9.0))
(assert (<= 4.0 x5))
(assert (<= x5 6.3504))
(assert (<= 4.0 x6))
(assert (<= x6 6.3504))
(assert (not (or (< (+ (* (^ x1 0.5) 2.75) (+ (* 1.0 (* (^ 8.0 0.5) (- 2.75))) (+ (* (^ x2 0.5) (- 1.0)) (+ (* (^ x3 0.5) (- 1.0)) (+ (* (^ x5 0.5) (- 1.0)) (+ (* (^ x6 0.5) (- 1.0)) (* 1.0 7.99))))))) 0.0) (< (+ (* x1 (* x4 (+ (- x1) (+ x2 (+ (- x3 x4) (+ x5 x6)))))) (+ (* x2 (* x5 (+ (- x1 x2) (+ x3 (+ (- x4 x5) x6))))) (- (- (- (- (* x3 (* x6 (+ x1 (+ (- x2 x3) (+ x4 (- x5 x6)))))) (* x2 (* x3 x4))) (* x1 (* x3 x5))) (* x1 (* x2 x6))) (* x4 (* x5 x6))))) 0.0))))
(check-sat)
(exit)
