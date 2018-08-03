#/bin/sh

array=( $(find . -name __pycache__) )

for a in "${array[@]}"
do
    echo "Deleting: $a"
    rm -rf $a
done

array2=( $(find . -name "*.pyc") )
for b in "${array2[@]}"
do
    echo "Deleting: $b"
    rm $b
done

array3=( $(find . -name "*.egg-info") )
for c in "${array3[@]}"
do
    echo "Deleting: $c"
    rm -rf $c
done

array4=( $(find . -name "*.egg") )
for d in "${array4[@]}"
do
    echo "Deleting: $d"
    rm -rf $d
done
