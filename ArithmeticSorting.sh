#! /bin/bash -x

PartTimeHour=8
echo "Welcome to Arithmetic Sorting"
echo "Enter three values"
read a
read b
read c

p=$(( a + b * c ))
echo "(a+b*c)==$p"
q=$(( a*b+c ))
echo "(a*b+c)==$q"
r=$(( c+a/b ))
echo "(c+a/b)==$r"
s=$(( a%b+c ))
echo "(a%b+c)==$s"
