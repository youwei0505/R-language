#--------------睲埃戈----------------
rm(list=ls());gc()
#--------------更ㄧΑ畐----------------
library('dplyr')
#--------------更ㄧΑ畐----------------
load("D:/GitHub/1091_R/R-language/Transaction_Table_20181020v1.Rdata")
#--------------郎竚----------------
#璶э跑竚
setwd("D:/GitHub/1091_R/R-language/")
getwd()
#--------------更ㄧΑ畐----------------
write.csv(Transaction_Table,file="D:/GitHub/1091_R/R-language/test.Rdata",row.names = FALSE)

save(Transaction_Table,file="D:/GitHub/1091_R/R-language/20200926complete.Rdata")
load("D:/GitHub/1091_R/R-language/20200926complete.Rdata")

x<-filter(Transaction_Table , Buy_date<=2001000,Buy_date<=2000000)
x1<-filter(Transaction_Table , (Buy_date<=2001000&Buy_date<=2000000) )
x2<-Transaction_Table %>% filter(.,(Buy_date<=2001000&Buy_date<=2000000))
x3<-Transaction_Table %>% filter((Buy_date<=2001000&Buy_date<=2000000))
#~~~@@@###
x4<-Transaction_Table %>% 
  filter(Buy_date<=2001000) %>% 
  filter(Buy_date<=2000000)
#~~~@@@###
x5<- filter (Transaction_Table ,(Buy_date<=2001000)) %>%  filter((Buy_date<=2000000) )
x6<-filter(filter(Transaction_Table,(Buy_date<=2001000)),(Buy_date<=2000000))
#--------------更ㄧΑ畐----------------
x4<-Transaction_Table %>% 
  filter(Buy_date<=20010000) %>% 
  filter(Buy_date>=20000000) %>% 
  select(code,Buy_date,Buy_price)
#--------------更ㄧΑ畐----------------
  x4<-Transaction_Table %>% select(code,Buy_date,Buy_price)
#--------------更ㄧΑ畐----------------
  x4<-Transaction_Table %>% 
    filter(Buy_date<=20010000) %>% 
    filter(Buy_date>=20000000) %>% 
    select(code,Buy_date,Buy_price,Sell_price,Ret) %>%
  mutate(
    avg_price=(Buy_price+Sell_price)/2,
    Ret_log=(Sell_price/Buy_price)
  )%>%
  arrange(Buy_date,Ret)
  




