set terminal png size 640,64
set output 'g_1_1_1.pdf'
unset key
unset ytics
set xtics 1
set label "A" at 3,3
set label "B" at -2,3
set label "C" at 0,3
set label "D" at sqrt(2),3
set label "E" at -3.5,3
plot [-5:+5][0:1] '-' u 1:2 w i lw 5
3 1
-2 1
0 1
1.4142 1
-3.5 1
e
