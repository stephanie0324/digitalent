## Work Station 教學
* scp
```
從主機copy到台灣衫
scp a_big_file 主機帳號@140.110.148.21:/home/主機帳號

從台灣衫copy到主機
scp 主機帳號@140.110.148.21:/home/主機帳號/a_big_file ~/desktop/.
# a_big_file 之後要空格，空格之後是要傳入的目的地

```
* job script
```
#PBS -P ACD109058                       #計畫代號
#PBS -W group_list=ACD109058            #群組代號
#PBS -N test_job                        #這個工作的名稱
#PBS -q ngscourse                       #指定queue的名稱
#PBS -o /home/u3149525/test_job.std     #正常標準輸出 - 如果工作執行順利就會輸出一行 test_job.std
#PBS -e /home/u3149525/test_job.err     #錯誤標準輸出 - 如果工作執行錯誤就會輸出一行 test_job.err,並將錯誤記錄在該檔案 
#PBS -M b06303077@ntu.edu.tw            #指定信箱
#PBS -m e                               #工作執行成功後會寄信
```
