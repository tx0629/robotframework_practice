# robotframework_practice
## wikiweb 
進行測試網頁搜尋功能
## sampleweb
熟悉各式KEYWORD
EX:select frame 、handle alert等
## mouse
學習滑鼠相關KEYWORD
EX:drag and drop、double click
## userkeyword
學習建立自定義keyword
## scroll_the_windows
使用 execute java 滾動網頁
快速到最上面及最下面還有根據pixel滾動
## for_loop
熟悉LOOP使用
## table_operation
計算表格行列、確認特定行列的文字與數值
## Count_&_Extract_Link_text
計算網頁中的連結數量並讀取文字
## Data_driven_test
使用 resources中的txt 作為resource file
定義keyword在 txt中　
註：其中不能包含test case但要完全去掉不能留空，
If you leave the Test cases section empty in the file that you are going to execute, Robot will think you have no test cases to execute.by stackoverflow
，~~不過ride讀不出來，猜測可能是版本太舊~~ <br>
Import resource後便可以在External resource中正常讀取 resource檔案
對網頁登入進行測試，測試正確帳號密碼，帳密錯誤輸入以及登出功能
## POM_pratice
Page object model 將網頁上的物件位置寫在一個python檔中，建立user keyword在resource中<br>
避免網頁中物件被修改之後，每一個用到的testcase都要修改
