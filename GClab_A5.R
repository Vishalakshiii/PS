#-cdf-pbinom-punif(x,min,max,lower.tail=TRUE)
#pdf-dbinom--dunif 
#X>>x , tail

#q1
punif(45,0,60,lower.tail=FALSE)
punif(30,0,60)-punif(20,0,60)

#dexp(x,lemda)
#pgamma(x,alpha,beta)

#5
punif(45,0,60,lower.tail = FALSE)
punif(30,0,60)-punif(20,0,60)

#q2
#(a)
dexp(3,0.5)
#(b)
x<-seq(0,5,by=0.1)
y<-dexp(x,0.5)
plot(y,type='l')
#(c)
pexp(3,0.5)
#(d)
x<-seq(0,5,by=0.2)
y<- pexp(x,1/2)
plot(x,y,type='l')
#(e)
x<-rexp(1000,0.5)
plot(density(x))

#q3
dgamma(3,shape=2,scale =1/3)
pgamma(1,shape=2,scale=1/3,lower.tail = FALSE)
qgamma(0.70,shape=2,scale=1/3)


