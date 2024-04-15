#0803 learning perl
#======================================================#
print "hi\n";
$abc = "this is a string\n";
print $abc;                 # '$' 為一個變數的意思

# 陣列 - 小老鼠開頭的東西
@array1 = (1..5);           # 1..5 相當於1,2,3,4,5
@array2 = ("abc","def");
$a1 = $array1[2];           # 要儲存陣列中的某一個數字時要將符號改成$
print $a1."\n";
print $a1.$array2[1]."\n";  # 將字串連再一起印出來, '.'類似於 '＋'將字串串連再一起

# 判斷程式
$a2 = 2;
if ($a2==2)
{
  print $a2+1
}
elsif ($a2==3)
{
  print $a2-2;
}
else
{
  print $a2+2;
}
print "\n";
print $a2;
print "\n";                # $a2 的直不會被更改到

# 迴圈
$sum =0;
for ($i=1;$i <=10; $i++)
{
  $sum = $sum + $i;
}

@sum1 = 0;
@list = (1..10);
foreach $j(@list)
{
  $sum1 = $sum1 + $j
}

@sum2 =0;
$k = 0;
while($k <=10)
{
  $sum2 = $sum2 + $k;
  $k++;
}

print $sum."\n";
print $sum1."\n";
print $sum2."\n";

#input and subroutine
print getanswer("Hello","!","Your age is ")."!\n";
sub getanswer
{
  $a = shift;           # shift - 取出陣列中第一個東西 , pop - 丟棄陣列中最後一個東西
  $b = shift;           # unshift - 從陣列的頭加入一個東西
  $c = shift;

  print "Please tell me your name : ";
  my $name = <STDIN>;   # my 為宣高此變數只存在在此括弧中 , STDIN 為 input
  chomp $name;
  print "\n";
  print "Please tell me your age : ";
  my $age = <STDIN>;
  chomp $age;
  print "\n";

  return $a.$name.$b.$c.$age;
}

# STDIN 在script 跑不動 要使用terminal 來跑
