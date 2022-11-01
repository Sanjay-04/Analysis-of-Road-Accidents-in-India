data<-read.csv("C:\\Users\\Navika M S\\OneDrive\\Documents\\R lab\\RoadAccidentData part 2.csv")
#print(data)
#cor(data$acc,data$group)
#cor(data[,4:10])
x<-data$Year2016
y<-data$Year2017
relation<-lm(x~y)
print(relation)
print(summary(relation))
plot(y,x,col = "blue",main = "2016 & 2017",
abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "accidents in 2016",ylab = "accidents in 2017")