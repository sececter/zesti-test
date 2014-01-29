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

