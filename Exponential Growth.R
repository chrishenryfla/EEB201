library(deSolve)
expGrowthODE<- function(tt, yy, pars){
  derivs<-pars['rr']*yy
  return(list(derivs))}
output <- lsoda(init, tseq, expGrowthODE, pars)
init<-1
tseq<-seq(0,20,by=0.01)
pars<-c(rr=0.1)
expGrowthOutput<-lsoda(init, tseq, expGrowthODE, pars)
head(expGrowthOutput)
plot(expGrowthOutput[,1],expGrowthOutput[,2])