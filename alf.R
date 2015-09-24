for (ii in 1:9){
if (ii==9){
cat("*");}
if(ii<9){cat("
             ")}}

for (ii in 0:9){
    cat("*&");}

dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
}
#dogs+1=11

meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf)}
  
bubbles <- 12;
for (i in -1:-4){
  bubbles <- i;}

years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill = T)  
  }}

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
compounded<-rep(bankAccounts);
interestRate <- 0.0125
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {bankAccounts[i]<-bankAccounts[i]-house[i]-food[i]-fun[i]+income[i];
  compounded[i] <- interestRate*bankAccounts[i];
  bankAccounts[i]<-bankAccounts[i]+compounded[i]
  }}

house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 
income <- c(21, 21, 21)
for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {bankAccounts[i]<-bankAccounts[i]-house[i]-food[i]-fun[i]+income[i];
  if (j%%2==1){
    bankAccounts[1]<-bankAccounts[1]+5
    bankAccounts[3]<-bankAccounts[3]+5
  }
  compounded[i] <- interestRate*bankAccounts[i];
  bankAccounts[i]<-bankAccounts[i]+compounded[i]
  }}

xx<-1
total<-0
while(xx<=17){
  total<-xx+total
  xx<-xx+1}

total
funcofalf<-function(ii){
if(ii<=-1){cat("small")}
if(ii >-1 & ii <1){cat("medium")}
if(ii>=1){cat("big")}}

funcofalf(.3)
funcofalf(3)
