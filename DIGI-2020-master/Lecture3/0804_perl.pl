# 0804 學習 perl
#===========================================

# 排序 sort
# $a <=> $b  由小到大排序 , ＄b <=> $a 由大排到小
# <=> -> 陣列為一個數字串 要做比較
# cmp -> 陣列為一個字串 要做比較

@list = (1..5);
@word_list = qw(f d i j k);                 #qw 代表用空格來分隔元素表示的字串
@sorted_list = sort { $b <=> $a}@list;
@sorted_words = sort {$a cmp $b}@word_list;
print @sorted_list;
print "\n";
print @sorted_words;
print "\n";

# 字串
# " " 雙引號表示一個字串，可以使用 \ 。
# \t -> tab , \" -> 印雙引號 , '' 直接印出單引號 , \l -> to lower case next letter , \L to lower case until \E, \u -> to upper case
# '' 單引號內部不能使用 \

# join & split
# join -> combines the elemant to a single array
@dnaararray = qw(a t c g g a t c q g a);
$dnastring = join('',@dnaararray);   # join  -> 變成一個 string
@dnaarray2 = split(/a/,$dnastring);  # split -> 變成一個 array
print $dnastring;
print "\n";
print @dnaarray2;
print "\n";


# file handle
# " < " read file
# " > " write file
# ">>" append to the latter file


open (File1 , "test.fa");
while(<File1>){
  $line = $_;                     # 一行一行讀進來的將它存在line裡面
  print $line;
}
close(File1);


open( File1 , ">file1.txt");        # 若沒有這個檔案 會直接開一個檔案出來
print File1 "hiiiiiiii \n";
close(File1);

# get file name 可以輸入當案位置 就不用一直將檔案存放在同一個位置
print "plz enter your file : ";
$name = <STDIN>;
chomp $name;
open( File1 , ">$name");
print File1 "hiiiiiiii \n";
close(File1);

# two dimension array
# $array[$row][$col] = $variable;


# Hash
## 沒有一個索引職 所以每一次 print 出來有可能不一樣 ，利用 sort 來排序整理成想要的輸出
%h = (k1 => "1" , k2 =>"B" , k3 =>3);
# $val = $h{k1};                     # recall value
# @a = %h;                         # array of keys and value;

foreach $v(values(%h))
{
  print $v."\n";
}

多層的 hash , 最後一個直才是value 其他為 keys
將多層value 一個一個取出
$h ->{k1} ->{"1"} = "human";
$h ->{k1} ->{"2"} = "mouse";
$h ->{k2} ->{"B"} = "Rice";

foreach $kl1 (keys %{$h})
{
  print $kl1;
  print "\n";
  foreach $kl2 (keys %{$h->{$kl1}})
  {
    $val = $h->{$kl1}->{$kl2};
    print $val;
    print "\n";
  }
}


## practice
## 將序列做成 reverse complement
@seq = ();
@new_seq = ();
$new_line = '';
open (File1 , "test.fa");
open (File2 , "test2.txt");
$cnt = 0;
while(<File1>){
  $line = $_;
  if($cnt > 0){
    push(@seq , $line);
  }
  $cnt++;
}
close(File1);
@seq = reverse(@seq);
$new_line = join('',@seq);
$new_line =~ tr/acgtACGT/tgcaTGCA/;
@new_seq = split("\n",$new_line);
$new_line = join("",@new_seq);
# print $new_line;
@new_seq = split('',$new_line);
$new_cnt = 1;
foreach (0..$#new_seq){
  print $new_seq[$_];
  if($new_cnt%70==0){
    print "\n";
  }
  $new_cnt++;
}
