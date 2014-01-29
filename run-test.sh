#!/bin/bash


if [ "X$1" == X ]; then
  echo "Usage: $0 <executable> [test folder] [tests]"
  exit
else
  if [ "X$2" == X ]; then
    TDIR=$1
  else
    TDIR=$2
  fi
fi

cd src

for f in *.bc; do
  fsimple=${f%.*}
  rm -f $fsimple

  if [ -x /bin/$fsimple ]; then
    ln -s /bin/$fsimple
  elif [ -x /usr/bin/$fsimple ]; then
    ln -s /usr/bin/$fsimple
  fi
done

rm -f $1

cd ..

sed "s/TEMPLATE-EXE/$1/g" zesti.tmpl > src/$1
chmod 755 src/$1

if [ "X$3" == "X" ]; then
  make check -C tests/$TDIR/
else
  make check -C tests/$TDIR/ "TESTS=$3"
fi
