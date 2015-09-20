discreteLogisticFun<-function(N0, rr, KK){
  NN<-matrix(NA, nrow = 1, ncol = KK+1)
  NN[1]<-N0
  for(tt in 1:KK){
    NN[tt+1]<-NN[tt]*(1+rr*(1-NN[tt]/KK))
  }
  
  return(NN)
}


rrv<-c(-.3,.3,1.3,1.9,2.2,2.7)

par(mfrow =c(2,3))
for (rr in (1:length(rrv))){
  N0=10
  KK=100
  NN = discreteLogisticFun(N0, rr ,KK)
  plot(1:(KK+1), NN)
}

