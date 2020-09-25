# library("quantmod")
if(!require(quantmod)){install.packages('quantmod')}
if(!require(nortest)){install.packages('nortest')}
# 如果沒有安裝套件 require(quantmod)=>Flase，if(判斷式){Block執行式}
# console中打入下行就可確認無此套件輸入，有就無動作
library("nortest")
#呼叫套件

x <- rnorm(1000)

y <- ad.test(x)
#套件
y

x<-3
x
x<(-3)
x
# 小於負數，要用括號

y<-NA
# 並不是 NULL 空值
y<-NA/3
y
y<-NA*3
y

y <-NULL
y
# NULL (empty)

y<-nortest::ad.test(x)
# 也可以這樣呼叫套件

x<-c(1,2,3,4,5,6,7)
x
x+c(1)
x+c(1,2,1)
#某些版本不行
x+c(7,6,5,4,3,2,1)