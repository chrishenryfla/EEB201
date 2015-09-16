
geometricGrowthFun<-function(N0=10, RR=0.95,ttmax){
 NN<-matrix(NA, nrow = 1, ncol = ttMax+1)NN[1]<-N0
 for(tt in 1:ttMax){NN[tt+1]<-RR*NN[tt]}
 plot(1:(ttMax+1), NN, xlab="time", ylab = "N", col="purple")