## Perl 筆記

* Basic rules of Perl
  * 註解 : 在前面加上 '#'
  * 變數與陣列
    * 變數 : '$'
    * 陣列 : '@' 
  * 結尾 : 需要加上一個 ';'

* 語法
  * if-else
  ```
  if(){}
  elsif(){}
  else(){}
  ```
  * for / foreach / while / do-until
  ```
  for(){}   # 很像 c++
  
  foreach $i (@list){ $sum = $sum + $i ;}
  
  while(){}
  
  do{}until()
  ```
  
  * input 
  ```
  $string = <STDIN>
  ```
 
 * shift / pop / unshift / push
   * shift : 從前面取出
   * pop : 從後面取出
   * shift : 從前面放入
   * shift : 從後面放入
  
 * string
   * join : array -> string
   * split : string -> array  
   ```
   @list = qw(1 2 3 4); #qw 代表用空格來分隔元素
 
   $str = join(' ' , @arr);
 
   @arr = split('',$str);
   ```
 
 * file handle
 ```
 open(file, "<...")  # read file
 open(file, ">...")  # write file
 open(file, ">>...") # append file
 ```
 
 * hash
 ```
 %h = (k1 =>"1" ,k1 =>"1",k2 =>"b" , k3 => "3" );  # hash initialization
 
 $h ->{k1} ->{"1"} = "human";
 $h ->{k1} ->{"2"} = "mouse";
 $h ->{k2} ->{"B"} = "Rice";
 ```
 1.
 key|value
 :-:|:-:
 k1|1
 k2|b
 k3|3
 2.
 key|key|value
 :-:|:-:|:-:
 k1|1|human
 k1|2|mouse
 k2|B|Rice
 
 * 處理字串
   * ^ matches the begging of the line
   * $ matches the end og the line
   * . mathches any single character except newline
   * \w matches word character
   * \w+ matches string
   * \W matches any non-character
   * \s matches white space
   * \S matches non white space
   * \d matches digits [0-9]
   * \D matches non digits

   ```
   $x = "cat dog house";
   while($x =~ /(\w+)/g)           # \w 就是 a-z \W 就是non word characters
   {                               # \w{0,1,2,.....} 可以取字串的長度
     print "Word is $1 , ends at position" , pos $x , "\n";
   }

   $x = "Calvin and Hobbes";
   @word = split / \s+ /, $x;  #\s+ 表示找不只一個空白格，直到不是空白格為止  
   # $word[0] = 'Calvin'
   # $word[1] = 'and'
   # $word[2] = 'Hobbes'

   ```
