setwd("C:\\Users\\IT24101293\\Desktop\\IT24101293")
data<-read.table("Exercise - Laptopsweights.txt", header=TRUE)
fix(data)
attach(data)

#1
popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

cat("Population mean:",popmn, "\n")
cat("Population standard deviation: ",popsd,"\n")

#2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)


samplemean<-mean(s.means)
print(samplemean)

samplevar<-var(s.means)
print(samplevar)

samplesd <- sqrt(s.samplevar)
print(samplesd)
#3
print(truemean<-mean(s.means))
print(truesd<-sd(s.sds))

popmn
truemean

popsd
truesd

truevar = popvar/6
samplevar
