zz<-read.table('pheno.sim.2014-1.txt',header=T)
maxp<-quantile(zz[,2],0.25)
rows=which(zz[,2]<maxp)
controls<-zz[rows,]

minp<-quantile(zz[,2],0.75)
rows2=which(zz[,2]>minp)
cases<-zz[rows2,]

par(mfrow=c(1,1), mar=c(4,4,3,2))
plot(density(zz[,2]),col=2,lwd=4,main="BGL")
abline(v=quantile(zz[,2],0.25),lty=2,lwd=3,col='olivedrab')
abline(v=quantile(zz[,2],0.75),lty=2,lwd=3,col='darkorchid4')

testSNP=snpsDataFrame["rs7584086_T",(cases[,1])]
Lon<-quantile(testSNP,0.75,na.rm = T)

testSNP2=snpsDataFrame["rs7584086_T",(controls[,1])]
Chris<-quantile(testSNP,0.25,na.rm = T)

table(testSNP)
pullout=sum(testSNP==1)
pullout2=sum(testSNP==2)
pullout3=sum(testSNP==0)

testSNP3=testSNP2[which(!is.na(testSNP2))]
table(testSNP3)
pullout4=sum(testSNP3==1)
pullout5=sum(testSNP3==2)
pullout6=sum(testSNP3==0)
