[
2.520
,
2.55270
]
ID:x1
;
[
2.00
,
2.463508844180
]
ID:x2
;
[
2.00
,
2.463508844180
]
ID:x3
;
[
2.00
,
2.463508844180
]
ID:x4
;
[
2.00
,
2.463508844180
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
*
1.00
(
*
2.00
(
*
3.14159265
(
-
0.0746230
)
)
)
)
(
+
(
*
ID:x1
0.0197020
)
(
+
(
*
ID:x1
(
-
0.0237110
)
)
(
+
(
*
ID:x1
(
-
0.0319320
)
)
(
+
(
*
ID:x1
0.0359420
)
(
+
(
*
ID:x2
(
*
2.00
(
-
0.0812040
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
2.00
0.0812040
)
)
(
+
(
*
ID:x3
(
*
2.00
0.0812040
)
)
(
+
(
*
ID:x3
(
*
2.00
(
-
0.0812040
)
)
)
(
+
(
*
ID:x4
(
*
2.00
(
-
0.0812040
)
)
)
(
+
(
*
ID:x4
(
*
2.00
0.0812040
)
)
(
+
(
*
ID:x5
(
*
2.00
0.0812040
)
)
(
+
(
*
ID:x5
(
*
2.00
(
-
0.0812040
)
)
)
(
+
(
*
1.00
0.7401050
)
(
+
(
*
1.00
(
-
0.478760
)
)
(
+
(
*
1.00
0.8366080
)
(
*
1.00
(
-
0.6290860
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
(assert (<= 2.52 x1))
(assert (<= x1 2.5527))
(assert (<= 2.0 x2))
(assert (<= x2 2.46350884418))
(assert (<= 2.0 x3))
(assert (<= x3 2.46350884418))
(assert (<= 2.0 x4))
(assert (<= x4 2.46350884418))
(assert (<= 2.0 x5))
(assert (<= x5 2.46350884418))
(assert (<= 1.0 x6))
(assert (<= x6 1.0))
(assert (not (< (+ (* 1.0 (* 2.0 (* 3.14159265 (- 0.074623)))) (+ (* x1 0.019702) (+ (* x1 (- 0.023711)) (+ (* x1 (- 0.031932)) (+ (* x1 0.035942) (+ (* x2 (* 2.0 (- 0.081204))) (+ (* x2 (* 2.0 0.081204)) (+ (* x3 (* 2.0 0.081204)) (+ (* x3 (* 2.0 (- 0.081204))) (+ (* x4 (* 2.0 (- 0.081204))) (+ (* x4 (* 2.0 0.081204)) (+ (* x5 (* 2.0 0.081204)) (+ (* x5 (* 2.0 (- 0.081204))) (+ (* 1.0 0.740105) (+ (* 1.0 (- 0.47876)) (+ (* 1.0 0.836608) (* 1.0 (- 0.629086)))))))))))))))))) 0.0)))
(check-sat)
(exit)
