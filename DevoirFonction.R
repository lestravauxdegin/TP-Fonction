#TP sur les fonctions
#Ingrid Jacquet, code: JA184143

library(tidyverse)
library(dplyr)
library(nlme)

#SOLUTION 1-Fonction qui indique si un nombre est a la fois multiple de 3 et de 5

P2 <- function(x){
 if(x%%3 == 0 & x%%5==0){
   print("x est un multiple de 3 et de 5")
 }
  else {
    print (x)
  }
}

A <-Vectorize(P2)
A(1:300)



#SOLUTION 2-Fonction qui retourne tous les nombres d'un vecteur qui sont a la fois multiples de 3 et de 5


P2 <- function(x){
  if(x%%3 == 0 & x%%5==0){
    print("x est un multiple de 3 et de 5")
  }
}
vec <- Vectorize(P2)
vec(1:200)



#SOLUTION 3- Fonction qui permet d'afficher seulement les coefficients et les statistiques de student 
#quand on realise une regression lineaire

#Soit Y,une variable a expliquer et x1, une variable explicative
#Y= b0 + b1*x1

#Regression lineaire (exemple si on prend comme source le package DDAG)

pricereg <- lm(sale.price ~ area, data=houseprices)
#Extraire les coefficients:
coef()
#coef() permetextraire les coefficients


#Pour produire les sorties pour chacune des regressions eventuelles 
summary()   #cest pour le output de la regression.