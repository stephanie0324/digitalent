## Linux 筆記
* The command line  
**ALL COMMAND NO UNDO**
  * q : 中斷指令 , canceling now process
  * ls man : show all the command
  * ls[options][location] : to see the files under this location  
  (用中括號的部份可填可不填)
  * pwd : print working directory  
  * echo $SHELL : echo(回傳) shell  
  * -a  
    * ' ? ' 指定幾個字
    * ' * ' 不確定字數
  * -l : prin more imformation about this file
  * ' . ' : current directory
  * ' .. ' : previous directory
  * mkdir : make directory
  * rmkdir : remove directory
  * touch :  create a blank file
  * rm : remove a file
  * cp : copy a file or directory
  * mv : move a file or rename a file
  ```
  mv 1.txt linux.txt                     #change name to linux.txt
  mv linux.txt /Users/stephanie/desktop  #move the file to desktop
  ```
  * cd - : move to the previous directory
  * permissions
    * chmod : change permissions
    * ls -Id : view the permissions for the selected file
    * r : read
    * w : write
    * x : execute
    * 判斷 (更改的時候 chmod g+x : 就是將group 的權限增加一個x，以此類推。）
      * user : 最前面
      * group :中間
      * other : 其他人
    * cat : print the data
    * tac : print the data in reverse
    * -n "n" : 將檔案的前 "n" 行印出來
    * nl : print line numbers before data
    * wc : print a count of lines , words , and characters.
      * -c : count bytes
      * -l : count lines
      * -m : count characters
      * -w : count words
* Piping and Redirection
  * STDIN(0) : 標準輸入
  * STDOUT(1) : 標準輸出
  * STDERROR(2) : 標準錯誤輸出
* Process Management
  * ps : get a listing of processes running on the system
  * kill : end the running process
  * sleep + num : 暫停工作 num 秒鐘
  * sleep + num + & : 目前工作站先休息 ，類似於將terminal 加一個新分頁
  * history : 顯示出所有執行過的指令
  * grep "str" + filename : 在 filename 當中找 str 若有就會印出來，沒有則不會印出任何東西

* vi - open a file and write
  * Esc : 離開編輯模式
  * 編輯模式
    * i : insert words enter edit mode
    * a : insert in next word enter edit mode
    * o : 換行 enter edit mode
  * 指令模式
     * :set nu : 增加行數
     * :set nonu : 取消行數
     * :wq  : save and exit
     * :q! : regard the changes
     * yyp : 複製一整行並貼上
* cut & sort 
  * cut[-options][path]
    * -f :  指定某一欄
    * -d : 以該符號做分割 （可用 空格、逗號 、或是字母都可以)
  * sort[-options][path]
 
 * sed & uniq
   * sed s/orange/banana/g file : 將 orange 改為banana，但是不會改到原本的file
   ( 加上 >file 才會更改到原始檔案)
   * uniq[options][path] : 刪除不同行且連續的相同字串，劃為同一行字串，如果中間有夾其他字串則不會刪去。
 
 * grep
   * egrep[command line option]<pattern>[path] : 秀出所有找到的資料
   ```
   egrep '[aeiou]{2,}' : 連再一起出現的aeiou 就會出現
   egrep '2.' : 出現2或是 2 連接某個東西就會找到
   ```
 * grep
      * -n :  秀出所有找到的資料並加上行數。
      * -c :  秀出找到資料的行數


