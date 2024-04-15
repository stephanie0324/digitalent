#!/Users/stephanie/Desktop/variable.sh
# a simple demonstration of using backticks

lines=`cat $1 | wc -l`
echo the number of lines in the file $1 is $lines
