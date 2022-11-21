#q1
n=100
df=n-1
x=rt(n,df)
#random dist
hist(x)

#q2
n=100
df=c(2,10,25)
rchisq(n,df) #chi square dist

#q3
x=seq(-6,6,length.out=100)
df=c(1,4,10,30)
dt(x,df[1])
dt(x,df[2])
plot(dt(x,df[3]))
dt(x,df[4])

for (i in 1:3)
 k=c("black","blue","green","red")
 plot(x,dt(x,df[i]),col=k[i],type='l')


plot(x,dt(x,df),col=c("black","blue","green","red"),type='l')

#q4
 #(i)
qf(0.95,10,20)
#(ii)
pf(1.5,10,20)
pf(1.5,10,20,lower.tail=FALSE)
#(iii)
q=c(0.25,0.5,0.75,0.999)
qf(q,10,20)
#(iv)
y<-rf(1000,10,20)
hist(y)