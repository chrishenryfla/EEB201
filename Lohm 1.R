snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-1.txt',header=TRUE)
snps=as.matrix(snpsDataFrame)
testSNP=snps["rs218206_G",]
table(testSNP)
het=sum(testSNP==1)/length(testSNP)
testSNP=snps["rs6717613_A",]
table(testSNP)
testSNP==1
length(testSNP)
is.na(testSNP)
het=sum(testSNP==1,na.rm=TRUE)/sum(!is.na(testSNP))
freq=sum(testSNP,na.rm=TRUE)/(2.0*sum(!is.na(testSNP)))
calc_freq=function(x){
  return(sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x))))}
calc_het=function(x){
  return(sum(x==1,na.rm=TRUE)/(sum(!is.na(x))))
}
freq=apply(snps,1,calc_freq)
het=apply(snps,1,calc_het)
plot(freq,het,xlab="Frequency",ylab="Heterozygosity")
p=seq(0,0.5,by=0.05)
points(p,2*p*(1-p),type="l",col=2)

compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}

chisqs=apply(snps,1,compute_chisquare)

pvals=pchisq(chisqs,1,lower.tail=FALSE)

sigthresh<-0.05
pvals<0.05
sum(pvals<sigthresh) 
mean(pvals<sigthresh)

mean(pvals<.01)
mean(pvals<.001)

num_pvals<-length(pvals)

exp_pvals<-(1:num_pvals)/num_pvals

sort_pvals<-sort(pvals)

log_sort_pvals<--log10(sort_pvals)
log_exp_pvals<--log10(exp_pvals)

plot(log_exp_pvals,log_sort_pvals)
lines(1:5,col=3)
