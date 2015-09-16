source()
#ScratchScript
library(ape)
library(geiger)
library(ggplot2)

getwd()
source("source.example.R")
library(ape)
#read in tree
tt <- read.tree("tree.tre")
str(tt)
attributes(tt)

#read in data

inpath="data.txt"
dd<-read.table("data.txt", header=T,sep = "\t",as.is = T)
attributes(dd)
head(dd)
dim(dd)
dflength<-dim(dd)[1]

#generate some random size data
size <- runif(dflength)

#cbind used to add the size colum to data
dd<-cbind(dd,size)
head(dd)
dd[1,]
dd[,1]
dd$mode=="MPF"

#which()

which(dd$mode == 'MPF')
dd[mpfs,]
mpfs <- which(dd$mode == 'MPF') #stores rows of mpf swimmers
mpf_swimmers <- dd[mpfs,] #stored this as a seperate df
head(mpf_swimmers)

#for statments
for (ii in 1:5){cat("\nthe number is ", ii)}
notfish <- c("bat", "dolphin", "toad", "soldier")
for(animal in notfish){cat(animal, "fish\n", sep="")}
for(animal in notfish){cat(animal, "fish\n")}
cat(animal,1)
for(animal in notfish){cat(animal,2, "fish\n")}

#while statements
xx <- 1
xx <- 1
while(xx < 5) {xx <- xx+1}
print(xx)

xx <- 1
xx <- 1
while(xx < 5) {
  xx <- xx+1; 
  if (xx == 3) {
    break; }
}
print(xx)

while(xx<10){
  cat("value of xx", xx, "/n") 
  xx<-xx+1; 
  if(xx==7){
    cat("lucky number", xx, "/n")
    }else{cat("not excited about the number",xx,"/n")}}
print(xx)


#pseudocode
#set sample size to 100
#Set R to 1.05 for yearly growth
#Loop code to simulate population growth over a 10 year period
#Plot growth over time
#X axis represents time
#Y axis reprents population

#geometric model from scratch
N0 <- 100
RR <- 1.05
ttMax <- 10
NN<-matrix(NA, nrow = 1, ncol = ttMax+1)
NN[1]<-N0
for(tt in 1:ttMax){NN[tt+1]<-RR*NN[tt]}
NN

plot(1:(ttMax+1), NN, xlab="time", ylab = "N", col="purple")

#3.2.1
N0 <- 100
RR <- .8
ttMax <- 10
NN<-matrix(NA, nrow = 1, ncol = ttMax+1)
NN[1]<-N0
for(tt in 1:ttMax){NN[tt+1]<-RR*NN[tt]}
NN

plot(1:(ttMax+1), NN, xlab="time", ylab = "N", col="purple")

