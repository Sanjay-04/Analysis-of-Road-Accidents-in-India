data<-read.csv("C:\\Users\\Navika M S\\OneDrive\\Documents\\Semester 3\\Presentations\\Acc.csv")
print(data)
Roadaccident.timeseries <-  ts(data,start(2015),frequency=25)
plot(Roadaccident.timeseries)