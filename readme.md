zesti Analysis
====================

*** Install ***

just as klee install, see AutoBuildZesti.sh and SimpBuildZesti.sh


*** Usagae ***

1. cd core-utils/src/obj-llvm

2. sed "s/TEMPLATE-EXE/xxx/g" zesti.tmpl > src/xxx  . xxx is the test program.

3. make check -C tests/xxx

results will be in  obj-llvm/klee-out-*.


TODO:  analysis the results.


*** Analysis ***

Zesti: Zero-Effort Symbolic Test Improvement.
	it was applied to GNU Coreutils, libdwarf and readelf. which found 52 previously unknown bugs. 
	Q: where are the bugs? should it not to be public ?

Zesti applied a technique for amplifying the effect of existing test suites using lightwight Symbolic execution mechanism, and checks all sensitive operations executed by the test suite for errors, and explores additional paths around sensitive operations.
	Q: how to explain the lightwight Symbolic execution? klee is a lightwight se?

the paper include 8 parts:

I. ITRODUCTION  (1 page)
	making 3 contributions:
	1. standard regression tests can be improved by symbolic execution-based techniques. Combining regression testing and symbolic to find bugs.
	2. providing an approach to analysis the quality of test suite. and discuss how the probability of finding a bug varies with the number of test cases being considered.
	3. demonstrate it by implementing Zesti.


II. Overview  (0.5 page)

III. Background and Related Work  (1 page)


IV. Zero Effort Symbolic Test Improvement (3 page)

	1. improving regression suites with additional symbolic checks.
	2. exploring additional paths around sensitive operations.
	3. improving efficiency by discarding Test cases.

V. Implementation. (0.5 page)

VI. Experimental Evaluation  (3.5 page)

	1. Benchmarks
	2. Bugs found
	3. Symbolic bug checks and Performance Overhead

	
VII. Discussion and Future work. (1 page) 


VIII. Conclusion (0.5 page)


















