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
0.1721660
)
)
)
)
(
+
(
*
ID:x1
0.099730
)
(
+
(
*
ID:x1
0.0141690
)
(
+
(
*
ID:x1
(
-
0.0173530
)
)
(
+
(
*
ID:x1
0.0141690
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
0.0997850
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
0.0997850
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
0.0997850
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
0.0997850
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
0.0997850
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
0.0997850
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
0.0997850
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
0.0997850
)
)
)
(
+
(
*
1.00
0.8822840
)
(
+
(
*
1.00
(
-
0.5867280
)
)
(
+
(
*
1.00
1.09030
)
(
*
1.00
(
-
0.5867280
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
(assert (not (< (+ (* 1.0 (* 2.0 (* 3.14159265 (- 0.172166)))) (+ (* x1 0.09973) (+ (* x1 0.014169) (+ (* x1 (- 0.017353)) (+ (* x1 0.014169) (+ (* x2 (* 2.0 (- 0.099785))) (+ (* x2 (* 2.0 0.099785)) (+ (* x3 (* 2.0 0.099785)) (+ (* x3 (* 2.0 (- 0.099785))) (+ (* x4 (* 2.0 (- 0.099785))) (+ (* x4 (* 2.0 0.099785)) (+ (* x5 (* 2.0 0.099785)) (+ (* x5 (* 2.0 (- 0.099785))) (+ (* 1.0 0.882284) (+ (* 1.0 (- 0.586728)) (+ (* 1.0 1.0903) (* 1.0 (- 0.586728)))))))))))))))))) 0.0)))
(check-sat)
(exit)
