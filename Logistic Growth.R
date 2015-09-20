library(deSolve)
pars <- c(rr = 2, cc = 0.1, ee = 0.1, dd = 0.2)
init <- c(200, 20)
tseq <- seq(0, 50, by=0.02)
yy<-c(30,40)
lvPredpreyODE <- function(tt, yy, pars) {
  derivs <-rep(NA, 2)
  derivs[1] <- pars['rr'] * yy[1] - pars['cc'] * yy[1] * yy[2]
  derivs[2] <- pars['ee'] * pars['cc'] * yy[1] * yy[2] - pars['dd'] * yy[2]
  return(list(c(derivs)))
}
par(mfrow=c(1,2))
plot(lvPredpreyOutput[,1], lvPredpreyOutput[,2],
     col="blue", type="l",
     xlab="time", ylab="# of individuals",
     ylim = c(0,1.2*max(lvPredpreyOutput[,2])))
points(lvPredpreyOutput[,1], lvPredpreyOutput[,3], col="red", type="l")
legText = c("Prey", "Predator")
legend('top', legText, lty=1, col = c('blue','red'))
plot(lvPredpreyOutput[,2], lvPredpreyOutput[,3],
     xlab="Prey", ylab="Predators", type="l", col='black')
