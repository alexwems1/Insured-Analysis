data <- read.csv("insurance.csv")
print(data)
data$Kilometres
data$Insured
#Segundo problema
#a) Kilometros
grafos <- c(1,2,3,4,5)
for (i in c(1,2,3,4,5)) {
  primero[i] <- sum(subset(data, Kilometres == i, select = c("Insured")))  
}
barplot(primero, names =grafos, xlab = "asegurados",  ylab = "Sum de reclamaciones", col = c("blue","red","green","yellow","black"))

for (j in c(1,2,3,4,5)) {
  segundo[j] <- sum(subset(data, Kilometres == j, select = c("Claims")))  
}
barplot(segundo, names=grafos, xlab = "reclamaciones",  ylab = "Sum de reclamaciones", col = c("blue","red","green","yellow","black"))
for (j in c(1,2,3,4,5)) {
  tercero[j] <- sum(subset(data, Kilometres == j, select = c("Payment")))  
}
barplot(tercero, names=grafos, xlab = "reclamaciones",  ylab = "Sum de pagos", col = c("blue","red","green","yellow","black"))
#b)Municipio
grafis <- c(1,2,3,4,5,6,7)
for (i in c(1,2,3,4,5,6,7)) {
  primero[i] <- sum(subset(data, Zone == i, select = c("Claims")))  
}
barplot(primero, names=grafis ,xlab = "Municipio",  ylab = "Sum de reclamos", col = c("blue","red","green","yellow","black"))

for (i in c(1,2,3,4,5,6,7)) {
  primero[i] <- sum(subset(data, Zone == i, select = c("Insured")))  
}
barplot(primero, names=grafis ,xlab = "Municipio",  ylab = "Sum de asegurados", col = c("blue","red","green","yellow","black"))


for (i in c(1,2,3,4,5,6,7)) {
  primero[i] <- sum(subset(data, Zone == i, select = c("Payment")))  
}
barplot(primero, names=grafis ,xlab = "Municipio",  ylab = "Sum de pagos", col = c("blue","red","green","yellow","black"))
#c) Modelo
grafes <- c(1,2,3,4,5,6,7,8,9)
for (i in c(1,2,3,4,5,6,7,8,9)) {
  primero[i] <- sum(subset(data, Make == i, select = c("Claims")))  
}
barplot(primero, names=grafes ,xlab = "Modelos",  ylab = "Sum de reclamos", col = c("blue","red","green","yellow","black"))

for (i in c(1,2,3,4,5,6,7,8,9)) {
  primero[i] <- sum(subset(data, Make == i, select = c("Insured")))  
}
barplot(primero, names=grafes ,xlab = "Modelos",  ylab = "Sum de asegurados", col = c("blue","red","green","yellow","black"))


for (i in c(1,2,3,4,5,6,7,8,9)) {
  primero[i] <- sum(subset(data, Make == i, select = c("Payment")))  
}
barplot(primero, names=grafes ,xlab = "Modelos",  ylab = "Sum de pagos", col = c("blue","red","green","yellow","black"))

#Tercer problema
#a)
library(corrplot)
correlacion<-round(cor(data),1)
corrplot(correlacion, method="number", type="upper")
#b)
plot(data$Insured,data$Payment)
plot(data$Claims,data$Payment)
#Cuarto Problema 
#a)
regresion <- lm(Payment ~ ., data = data)
summary(regresion)
#b)
#b)
plot(data$Insured,data$Payment)
plot(data$Claims,data$Payment)
plot(data$Kilometres,data$Payment)
plot(data$Zone,data$Payment)
scatter.smooth(x=data$Insured,y=data$Payment, main = "Insured~Payment")
scatter.smooth(x=data$Claims,y=data$Payment, main = "Claims~Payment")
#Quinto Problema
pago_especial <- c()

for (i in c(1,2,3,4,5)) {
  primero_chale <- sum(subset(data, Kilometres == i, select = c("Insured")))
  segundo_chale <- sum(subset(data, Kilometres == i, select = c("Payment")))  
  pago_especial[i] <- primero_chale/segundo_chale
  
}

barplot(pago_especial, names =grafos, xlab = "Kilometros", ylab= "Pago especial")

pago_especial1 <- c()
grafis <- c(1,2,3,4,5,6,7)
for (i in c(1,2,3,4,5,6,7)) {
  primero_chale1 <- sum(subset(data, Zone == i, select = c("Insured")))
  segundo_chale1<- sum(subset(data, Zone == i, select = c("Payment")))  
  pago_especial1[i] <- primero_chale1/segundo_chale1
}

barplot(pago_especial1, names =grafis, xlab = "Municipio", ylab= "Pago especial")

pago_especial2 <- c()
grafis <- c(1,2,3,4,5,6,7)
for (i in c(1,2,3,4,5,6,7)) {
  primero_chale2 <- sum(subset(data, Bonus == i, select = c("Insured")))
  segundo_chale2<- sum(subset(data, Bonus == i, select = c("Payment")))  
  pago_especial2[i] <- primero_chale2/segundo_chale2
}

barplot(pago_especial2, names =grafis, xlab = "Bono", ylab= "Pago especial")

