[
4.00
,
6.35040
]
ID:x1
;
[
4.00
,
4.00
]
ID:x2
;
[
6.35040
,
6.35040
]
ID:x3
;
[
1.00
,
1.00
]
ID:x4
;
[
1.00
,
1.00
]
ID:x5
;
[
1.00
,
1.00
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
ID:arccos
(
(
/
(
^
ID:x1
0.5
)
4.00
)
)
)
(
+
(
*
1.00
(
*
3.14159265
(
-
(
/
1.00
6.00
)
)
)
)
(
+
(
*
1.00
0.7970
)
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
+
(
-
(
-
(
*
(
-
(
*
(
^
ID:x1
0.5
)
(
^
ID:x1
0.5
)
)
)
(
*
(
^
ID:x1
0.5
)
(
^
ID:x1
0.5
)
)
)
(
*
(
*
(
^
ID:x2
0.5
)
(
^
ID:x2
0.5
)
)
(
*
(
^
ID:x2
0.5
)
(
^
ID:x2
0.5
)
)
)
)
(
*
(
*
(
^
ID:x3
0.5
)
(
^
ID:x3
0.5
)
)
(
*
(
^
ID:x3
0.5
)
(
^
ID:x3
0.5
)
)
)
)
(
+
(
*
2.00
(
*
(
*
(
^
ID:x1
0.5
)
(
^
ID:x1
0.5
)
)
(
*
(
^
ID:x3
0.5
)
(
^
ID:x3
0.5
)
)
)
)
(
+
(
*
2.00
(
*
(
*
(
^
ID:x1
0.5
)
(
^
ID:x1
0.5
)
)
(
*
(
^
ID:x2
0.5
)
(
^
ID:x2
0.5
)
)
)
)
(
*
2.00
(
*
(
*
(
^
ID:x2
0.5
)
(
^
ID:x2
0.5
)
)
(
*
(
^
ID:x3
0.5
)
(
^
ID:x3
0.5
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
-
(
*
(
^
ID:x3
0.5
)
(
^
ID:x3
0.5
)
)
(
*
(
^
ID:x1
0.5
)
(
^
ID:x1
0.5
)
)
)
(
*
(
^
ID:x2
0.5
)
(
^
ID:x2
0.5
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
(assert (<= x2 4.0))
(assert (<= 6.3504 x3))
(assert (<= x3 6.3504))
(assert (<= 1.0 x4))
(assert (<= x4 1.0))
(assert (<= 1.0 x5))
(assert (<= x5 1.0))
(assert (<= 1.0 x6))
(assert (<= x6 1.0))
(assert (not (< (+ (arccos (/ (^ x1 0.5) 4.0)) (+ (* 1.0 (* 3.14159265 (- (/ 1.0 6.0)))) (+ (* 1.0 0.797) (* (+ (/ 3.14159265 2.0) (arctan2 (^ (+ (- (- (* (- (* (^ x1 0.5) (^ x1 0.5))) (* (^ x1 0.5) (^ x1 0.5))) (* (* (^ x2 0.5) (^ x2 0.5)) (* (^ x2 0.5) (^ x2 0.5)))) (* (* (^ x3 0.5) (^ x3 0.5)) (* (^ x3 0.5) (^ x3 0.5)))) (+ (* 2.0 (* (* (^ x1 0.5) (^ x1 0.5)) (* (^ x3 0.5) (^ x3 0.5)))) (+ (* 2.0 (* (* (^ x1 0.5) (^ x1 0.5)) (* (^ x2 0.5) (^ x2 0.5)))) (* 2.0 (* (* (^ x2 0.5) (^ x2 0.5)) (* (^ x3 0.5) (^ x3 0.5))))))) 0.5) (- (- (* (^ x3 0.5) (^ x3 0.5)) (* (^ x1 0.5) (^ x1 0.5))) (* (^ x2 0.5) (^ x2 0.5))))) (- 1.0))))) 0.0)))
(check-sat)
(exit)
