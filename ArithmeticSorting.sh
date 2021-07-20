#! /bin/bash -x
declare -A AA

PartTimeHour=8
echo "Welcome to Arithmetic Sorting"
echo "Enter three values"
read a
read b
read c

p=$(( a + b * c ))
echo "(a+b*c)==$p"
AA[1]=$p
q=$(( a*b+c ))
echo "(a*b+c)==$q"
AA[2]=$q
r=$(( c+a/b ))
echo "(c+a/b)==$r"
AA[3]=$r
s=$(( a%b+c ))
echo "(a%b+c)==$s"
AA[4]=$s
echo "The values in dictionary are: ${AA[*]}"
