getwd()
data=read.table("/home/onyxia/work/Tp2-apprentissage-supervis-/eucalyptus.txt")
View(data)
attach(data)
data

#question 1
#représentation des données dans le plan
plot(circ,ht)

#Question 2
reg <- lm(ht ~ circ, data = data)
summary(reg)

#Question 3
béta2_chap=cov(ht,circ)/var(circ)
béta1_chap=mean(ht)-béta2_chap*mean(circ)
béta1_chap
béta2_chap

#Question 4
confint(reg, level=0.95)
low=béta1_chap-1.96*0.179802
low
upper=béta1_chap+1.96*0.179802
upper

#Question 5
#Oui, les IC resteront valables car 
#n est grand et selon le Théorème central limite, la loi tend vers
# la loi normale

#Question 6
plot(circ,ht)
abline(reg,col="red")
res=predict(reg,interval="confidence")
head(res)
lines(sort(data$circ),sort(res[,2]),col=2)
lines(sort(circ),sort(res[,3]),col=2)


#Question 7
new_data=data.frame(circ=c(50,100,150,200))
predict(reg,newdata=new_data,interval = "prediction")


#Question 8
prev=predict(reg,interval="prediction")
head(prev)
lines(sort(data$circ),sort(prev[,2]),col=4)
lines(sort(circ),sort(prev[,3]),col=4)






