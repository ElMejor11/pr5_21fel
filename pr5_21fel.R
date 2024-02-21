nuevo_dir <- "C:/pr5_21fel"
setwd(nuevo_dir)

#Ejercicio 1
library(ggplot2)
n_registros<-200
set.seed(123)
site<-sample(paste0("site", 1:10), n_registros, replace = TRUE)
tipo_artefacto=sample(c("pottery","tools", "jewerly", "weapons"), n_registros, replace = TRUE)
numero_de_artefacto=sample(1:1000, n_registros, replace = TRUE)
contexto=sample(c("habitacional", "funerario", "otros"), n_registros, replace = TRUE)
latitud<- runif(n_registros, min=0, max=90)
longitud<- runif(n_registros, min=-180, max=180)

archaeology.data <- data.frame(
  site=site,
  tipo_artefacto=tipo_artefacto,
  numero_de_artefacto=numero_de_artefacto,
  contexto= contexto,
  latitud= latitud,
  longitud=longitud
)
names(archaeology.data)

#Ejercicio 2

media <- mean(numero_de_artefactos)
cuartiles <- quantile(numero_de_artefactos)

#Ejercicio 3

histograma <- hist((numero_de_artefacto), main="Histograma", col= "green")

##

#Ejercicio 4

grafico_caja <- boxplot((numero_de_artefacto), main="diagrama", col= "green")

##

#Ejercicio 5

barplot(numero_de_artefacto)

#Ejercicio 6

ggplot(archaeology.data, aes(x=longitud, y=latitud)) +
  geom_bin2d() +
  labs(title="densidad de artefactos", x="longitud", y="latitud")

#Ejercicio 7

total_artefactos<-sum(archaeology.data$numero_de_artefacto)

#Ejercicio 8

mediana<- median(archaeology.data$numero_de_artefacto)

#Ejercicio 9

desviacion_estandar <-sd(numero_de_artefacto)
print(desviacion_estandar)

#Ejercicio 10

desviacion <- which.max(total_artefactos)

#Ejercicio 11

tabla <- aggregate(numero_de_artefacto ∼ site, data = archaeology.data,
                   FUN=

#Ejercicio 12


