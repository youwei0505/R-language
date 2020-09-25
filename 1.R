s<-100#目前股價
k<-100#exercise price
t<-0.5#risk-free price 
r<-0.005#continuous dividend yield d 0
alpha<-0.2#volatility vol 0.2 
bata<-0# time to maturity TM 0.5

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
d2=(ln_data+data_3*t)/data_2
d2

#-------Goal 3 : Put-Call parity -----
DeltaC<-exp(-r*t)*pnorm(d1)
# C 對s微分
DeltaP<-(-exp(-r*t)*pnorm(-d1))

# DeltaC
# DeltaP
# ----Ans
# d1 = 0.08838835 
# d2 = -0.0530330
# 5.755882
# 5.506194
#-------Goal 3 : Put-Call parity -----
# S*exp(-d*Tm)+Call
# Put+K*exp(-rf*Tm)

#-------Goal 3 : Delta -----
#DeltaC<-exp(-d*Tm)*pnorm(d1)
#DeltaP<-(-exp(-d*Tm)*pnorm(-d1))
