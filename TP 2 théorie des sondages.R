library(sampling)
library(readxl)

N_h <- c(15000,25000,20000)
mu_yh <- c(20,35,60)
S_yh <- c(6,12,16)

N=sum(N_h)

mu_y=(1/N)*sum((N_h*mu_yh))
round(mu_y,2)


#calcul de la dispersion intra
S2_intra=1/(N-1)*(sum((N_h-1)*S_yh^2))

#calcul de la dispersion inter
S2_inter=
  
  ##----------------------------------------------------------------
##---------------------------------Exercice 6 ---------------------
library(readxl)
getwd()
dataset <- read_excel("/home/onyxia/work/Tp2-apprentissage-supervis-/aeroports_complet.xlsx")
View(dataset)

N=67
n=30

#var aux Pass19

#Question 1
summary=summary(dataset$Pass19)
summary
#etendue
range=summary[6]-summary[1]
range

#rappport interquartile
rapport=summary["3rd Qu."]/summary["1st Qu."]
rapport

#coefficient de variation
mu_x=mean(dataset$Pass19)
S2_x=var(dataset$Pass19)
cv_x=sqrt(S2_x)/mu_x


#Question 2
attach(dataset)
#coefficient de variation de txh si SRS
Npop <- 67
mu_y <- mean(Pass20)
S2_y <- var(Pass20)
#Variance sous un SRS de taille n=30
V_SRS <-(Npop**2)*(1/30-1/Npop)*S2_x
V_SRS 
CV_SRS <-sqrt( )
#Taille d’echant min pour un CV<=20%


