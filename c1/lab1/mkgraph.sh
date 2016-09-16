#!/usr/bin/gnuplot
set terminal png size 800,480 enhanced font 'Arial, 16'
set output 'sort.png'

set style line 1 linecolor rgb 'red' linetype 1 linewidth 2
set style line 2 linecolor rgb 'blue' linetype 1 linewidth 2
set style line 3 linecolor rgb 'green' linetype 1 linewidth 2

set border linewidth 1
set key top left
set grid
set mytics 0
set format y "%.6f"
set xlabel "Number of elements" font "Arial, 16"
set format x "%.0f"
set ylabel "Execution time (sec)" font "Arial, 16"
set xtics 100000 font "Arial, 12"
set ytics font "Arial, 12"
set rmargin 4
set tmargin 2
set mxtics

plot "./BubbleSort/bubblesort.dat" using 1:2 title "bubblesort" with linespoints ls 1,\
	 "./CountingSort/countingsort.dat" using 1:2 title "countingsort" with linespoints ls 2,\
	 "./HeapSort/heapsort.dat" using 1:2 title "heapsort" with linespoints ls 3

set output 'bubblesort.png'
plot "./BubbleSort/bubblesort.dat" using 1:2 title "bubblesort" with linespoints ls 1

set output 'countingsort.png'
plot "./CountingSort/countingsort.dat" using 1:2 title "countingsort" with linespoints ls 2

set output 'heapsort.png'
plot "./HeapSort/heapsort.dat" using 1:2 title "heapsort" with linespoints ls 3

set output 'counting_and_heap_sort.png'
plot "./CountingSort/countingsort.dat" using 1:2 title "countingsort" with linespoints ls 2,\
	 "./HeapSort/heapsort.dat" using 1:2 title "heapsort" with linespoints ls 3


