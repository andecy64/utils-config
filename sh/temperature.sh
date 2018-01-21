sensors | grep "Core" | awk '{print $3}' | tr -d '+' | sed 's/\.0.*//'
for i in "grep 'Core' $1";
do printf $i;
done
