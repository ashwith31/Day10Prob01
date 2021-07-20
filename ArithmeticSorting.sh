#! /bin/bash -x

echo "Welcome to Arithmetic Sorting"
echo "Enter three values"
read a
read b
read c

p=$(( a + b * c ))
echo " (a+b*c)==$p"
