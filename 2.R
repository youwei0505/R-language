# -- inital
F<-12833#目前股價
K<-12800#exercise price
rf<-0.005#risk-free price 
vol<-0.2#volatility 
Tt<-as.Date("2020/10/21","%Y/%m/%d") 
#"2020/10/21"
Tm<-as.numeric(Tt - Sys.Date()+1)/365


#------calculate1
ln_data<-(log(s/k))
data_1<-r-bata+(0.5*(alpha^2))
data_2<-(alpha)*((t)^0.5)
#------resulte1
d1=(ln_data+data_1*t)/data_2
d1
#------calculate2
ln_data_2=(log(s/k))
data_3<-r-bata-(0.5*(alpha^2))
data_3
#------resulte2
d2=(ln_data + data_3*t)/data_2
d2

#-------Goal 3 : Put-Call parity -----
DeltaC<-exp(-r*t)*pnorm(d1)
DeltaP<-(-exp(-r*t)*pnorm(-d1))
DeltaC
DeltaP
# ----Ans
# 0.08838835
# 5.755882
# 5.506194
#-------Goal 3 : Put-Call parity -----
# S*exp(-d*Tm)+Call
# Put+K*exp(-rf*Tm)

#-------Goal 3 : Delta -----
#DeltaC<-exp(-d*Tm)*pnorm(d1)
#DeltaP<-(-exp(-d*Tm)*pnorm(-d1))
