[
2.58540
,
2.61810
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
0.04690
)
)
)
)
(
+
(
*
ID:x1
0.0512370
)
(
+
(
*
ID:x1
(
-
0.0144130
)
)
(
+
(
*
ID:x1
(
-
0.022410
)
)
(
+
(
*
ID:x1
(
-
0.0144130
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
(
-
0.0734270
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
0.0734270
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
0.0734270
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
0.0734270
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
0.0734270
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
0.0734270
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
0.0734270
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
0.0734270
)
)
)
(
+
(
*
1.00
0.5427560
)
(
+
(
*
1.00
(
-
0.4790160
)
)
(
+
(
*
1.00
0.7099540
)
(
*
1.00
(
-
0.4790160
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
(assert (<= 2.5854 x1))
(assert (<= x1 2.6181))
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
(assert (not (< (+ (* 1.0 (* 2.0 (* 3.14159265 (- 0.0469)))) (+ (* x1 0.051237) (+ (* x1 (- 0.014413)) (+ (* x1 (- 0.02241)) (+ (* x1 (- 0.014413)) (+ (* x2 (* 2.0 (- 0.073427))) (+ (* x2 (* 2.0 0.073427)) (+ (* x3 (* 2.0 0.073427)) (+ (* x3 (* 2.0 (- 0.073427))) (+ (* x4 (* 2.0 (- 0.073427))) (+ (* x4 (* 2.0 0.073427)) (+ (* x5 (* 2.0 0.073427)) (+ (* x5 (* 2.0 (- 0.073427))) (+ (* 1.0 0.542756) (+ (* 1.0 (- 0.479016)) (+ (* 1.0 0.709954) (* 1.0 (- 0.479016)))))))))))))))))) 0.0)))
(check-sat)
(exit)
