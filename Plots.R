library(ggplot2)
library(qcc)
accid=read.csv("C:\\Users\\Sanjay\\Desktop\\Msc\\Sem 3\\R Lab\\Road Accident Analysis\\Acc.csv")
accid$group=as.factor(accidd$group)
one.way=aov(accid$acc~accid$group,data=acc)
summary(one.way)
boxplot(accid$acc~accid$group,data=accid,main="Accident", xlab="Years",ylab="Accident",col=rainbow(4))
TukeyHSD(one.way)

q=accid$acc
aggregate(acc~group,data=accid,mean)
attach(accid)
values=qcc.groups(accid$acc,accid$group)
qcc(values,type="xbar",std.dev="UWAVE-SD")
qcc(values,type="S",xlab="Years",ylab="Accident")
qcc(q,type="c",xlab="Years",ylab="Accident")

