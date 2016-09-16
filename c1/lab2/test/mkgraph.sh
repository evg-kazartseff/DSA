#!/usr/bin/gnuplot
set terminal png size 800,480 enhanced font 'Arial, 16'


set style line 1 linecolor rgb 'red' linetype 1 linewidth 2
set style line 2 linecolor rgb 'green' linetype 1 linewidth 2

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

set output 'lookup.png'
plot "./bstree_lookup.dat" using 1:2 title "bstree" with linespoints ls 1,\
     "./hashtab_lookup_KPHash.dat" using 1:2 title "hashtab" with linespoints ls 2,\

set output 'lookup_bstree.png'
plot "./bstree_lookup.dat" using 1:2 title "bstree" with linespoints ls 1

set output 'lookup_KPHash.png'
plot "./hashtab_lookup_KPHash.dat" using 1:2 title "KPHash lookup" with linespoints ls 2

set output 'bstree_add.png'
plot "./bstree_add.dat" using 1:2 title "bstree add" with linespoints ls 1

set output 'hashtab_add.png'
plot "./hashtab_add.dat" using 1:2 title "hashtab add" with linespoints ls 2

set output 'lookup_ELFHash.png'
plot "./hashtab_lookup_ELFHash.dat" using 1:2 title "ELFHash lookup" with linespoints ls 2

set output 'lookup_hashtab.png'
plot "./hashtab_lookup_ELFHash.dat" using 1:2 title "lookup ELFHash" with linespoints ls 1,\
     "./hashtab_lookup_KPHash.dat" using 1:2 title "lookup KPHash" with linespoints ls 2,\
