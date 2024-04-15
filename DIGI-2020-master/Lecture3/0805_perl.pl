
## 0805 practice perl
#====================================


# 字串練習

## part 1
open(File ,"<test.fa");
while(defined($line = <File>))
{
  if($line =~ /^>/)
  {
    print $line;
    print "This is a header line of sequence data.\n";
  }
}

##part 2
$string = "hello world";

if($string =~m!world!)          # $string =~ /world/ does the same thing
{                               # $string =~ /world/i -> 'i' means does not care about the upper or lower case
  print "It matches\n";         # 比對時，要跟後面的字串一模一樣才會成功
}else
{
  print "It doesn't match\n";
}

## part 3 Regular Expressions
##=========================##
# ^ matches the begging of the line
# $ matches the end og the line
# . mathches any single character except newline
# \w matches word character
# \w+ matches string
# \W matches any non-character
# \s matches white space
# \S matches non white space
# \d matches digits [0-9]
# \D matches non digits
##=========================##
$x = "cat dog house";
while($x =~ /(\w+)/g)           # \w 就是 a-z \W 就是non word characters
{                               # \w{0,1,2,.....} 可以取字串的長度
  print "Word is $1 , ends at position" , pos $x , "\n";
}

### match a string with two words. $1 will be the first word , $2 will be the second.
# m/^\s+(\w+)\W+(\w+)\s+$/


## part 4 Split - 比對到的東西要丟到
## @word = split / \s+ /, $x;       \s+ -> 可以填任意想要分割的符號
## @parts = split m!(/)!,$x ;        會將比對到的東西保留，也會把符號當作分割點

$date = '03/26/1993';
$date =~ s!(\d+)/(\d+)/(\d+)!$3/$1/$2!;
print "$date\n";



## other expressions
##=========================##
# $& contains the entire matched string
# $` contains everything before the matched $string
# $' contains everything after the matched $string
##=========================##

## practice
open(File1 , "<test.fa");
open(File2,">new_test.txt");
@seq=();
$new_line = '';
@require_list = ();
while(defined($line = <File1>))
{
  if(!($line =~ /^>/))
  {
    chomp $line;
    push(@seq,$line);
  }
}
$new_line = join('',@seq);
## 找位置
while($new_line =~ /(CTGTGA)/g)
{
  print "Word is $1 , ends at position " , pos $new_line , "\n";
}

# 列出序列
@require_list = split(/CTGTGA/,$new_line);
print File2 "> first sequence \n";
print File2 @require_list[0]."\n";
print File2 "> second sequence \n";
print File2 @require_list[1]."\n";
print File2 "> third sequence \n";
print File2 @require_list[2]."\n";
