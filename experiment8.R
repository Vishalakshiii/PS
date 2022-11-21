data<-read.csv(file.choose())
nrow(data)
head(data,10)
mean(data$Wall.Thickness)
hist(data$Wall.Thickness,col='Red')
abline(v=12.80205,col='Green')

#a
s=c()
n=9000
par(mfrow=c(2,2))

n=10
for(i in 1:n)
  s[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
hist(s,col="Yellow")
abline(v=mean(s),col="Black")



#b
n=50
for(i in 1:n)
  s[i]=mean(sample(data$Wall.Thickness,50,replace = TRUE))
hist(s,col="Yellow")
abline(v=mean(s),col="Black")

for(i in 1:n)
  s[i]=mean(sample(data$Wall.Thickness,500,replace=TRUE))
hist(s,col="Yellow")
abline(v=mean(s),col="Black")

for(i in 1:n)
  s[i]=mean(sample(data$Wall.Thickness,9000,replace=TRUE))
hist(s,col="Yellow")
abline(v=mean(s),col="Black")
