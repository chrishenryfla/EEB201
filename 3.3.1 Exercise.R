discreteLogisticFun<-function(N0=10, rr=0.5, KK=100){
  NN<-matrix(NA, nrow = 1, ncol = ttMax+1)
  NN[1]<-N0
  for(tt in 1:ttMax){
    NN[tt+1]<-NN[tt]*(1+rr*(1-NN[tt]/KK))
  }}
  