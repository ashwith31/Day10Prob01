#! /bin/bash -x
declare -A AA
declare -a BB
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
b=0
for((i=1;i<=4;i++))
do
BB[((b++))]=${AA[$i]}
done
echo ${BB[*]}
echo ${!BB[*]}
de=0
for ((j=0;j<4;j++))
do
for ((i=1;i<=3;i++))
do
if [ ${BB[i-1]} -lt ${BB[i]} ]
then
        de=${BB[i-1]}
        BB[((i-1))]=${BB[i]}
        BB[((i))]=$de
fi
done
done
echo "Descending Order=${BB[*]}"
