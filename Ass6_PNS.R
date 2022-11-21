#QUESTION 1
#i)
f<-function(x,y){
  (2*(2*x+3*y)/5)
}

integral2(f,xmin=0,xmax=1,ymin=0,ymax=1)
f<-function(x){
  (2*(2*x)/5)
}
integral(f,xmin=0,xmax=1)
library(pracma)

install.packages("pracma")

t<-function(x,y){return (2*(2*x+3*y)/5)}
integral2(t,xmin=0,xmax=1,ymin=0,ymax=1)
#iii)
f2<-function(x) { return(2*(2*x)/5)}
integral(f2,0,1)
#ii)
f1<-function(y){return (2*(2+3*y)/5)}
integral(f1,0,1)


#iv)
f3<-function(x,y) {return(x*y*t(x,y))}

integral2(f3,xmin=0,xmax=1,ymin=0,ymax=1)


f<-function(x,y){
  (x+y)/30
  
}


##QUESTION 2
#i)
x<-function(x,y) { return((x+y)/30)}

zz<-x(0,0)
zo<-x(0,1)
zt<-x(0,2)

oz<-x(1,0)
oo<-x(1,1)
ot<-x(1,2)

tz<-x(2,0)
to<-x(2,1)
tt<-x(2,2)

thz<-x(3,0)
tho<-x(3,1)
tht<-x(3,2)

mat_vals<-c(zz,zo,zt,oz,oo,ot,tz,to,tt,thz,tho,tht)

#m<-matrix(c("zz","zo","zt","oz","oo","ot","tz","to","tt","thz","tho","tht"),nrow=4,ncol=3,byrow = TRUE)

matrix_q2<-matrix(mat_vals,nrow=4,ncol=3,byrow = TRUE)
matrix_q2


#ii)
sum(matrix_q2)

#iii & iv)

row.sum<-apply(matrix_q2,1,sum)
row.sum

col.sum<-apply(matrix_q2,2,sum)
col.sum


#v)

z<-matrix_q2[1,2]/col.sum[2]
z

#E(x)
sum<-0
for (i in 1:length(row.sum))
  sum=sum+(i-1)*row.sum[i]
sum


#E(y)
sumy<-0
for (i in 1:length(col.sum))
  sumy=sumy+(i-1)*col.sum[i]
sumy


#E(x,y)
sumxy=0
for (i in 1:length(row.sum))
  for (j in 1:length(col.sum))
    sumxy = sumxy + (i-1)*(j-1)*matrix_q2[i,j]

sumxy

#Var(x)
sumx2=0
for (i in 1:length(row.sum))
  sumx2=sumx2+(i-1)*(i-1)*row.sum[i]

varx = sumx2-(sum*sum)
varx


#Vary
sumy2=0
for (i in 1:length(col.sum))
  sumy2=sumy2+(i-1)*(i-1)*col.sum[i]

vary = sumy2-(sumy*sumy)
vary


#cov(x,y)
covxy = sumxy - sum*sumy
covxy

#corr coff

corcof = covxy/(sqrt(abs(varx))*sqrt(abs(vary)))
corcof