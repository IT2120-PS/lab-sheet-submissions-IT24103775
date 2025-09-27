setwd("C:\\Users\\it24103775\\Desktop\\Lab 08")

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popsd<-sqrt(var(Weight.kg.))

#Q2

samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg., 6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.mean<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

#Q3

samplemean<-mean(s.mean)
samplesd<-sd(s.mean)

popmn
samplemean

truesd=popsd/6
samplesd

popsd
samplesd
