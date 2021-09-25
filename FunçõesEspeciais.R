#Funćões especiais

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()


 #Contruindo um loop da forma usual
lista = list(a=(1:10), b=(10:20))
lista
inicial_a = 0
inicial_b = 0
value_a = 0
value_b = 0

for (i in lista$a){
  value_a = value_a + i
}

for (i in lista$b){
  value_b = value_b + i
}

value_a
value_b

# Utilizando uma versão bult-in Apply para vetores e listas
sapply(lista, sum)
sapply(lista, mean)

# Utlizando Apply para matrizes
matriz = matrix(c(1:9), nrow=3)
matriz

#for a matrix 1 indicates rows, 2 indicates columns
apply(matriz, 1, mean)
apply(matriz, 1, sum)
apply(matriz, 2, mean)
apply(matriz, 2, sum)

#unlist - produz um vetor com elementos da lista
?unlist

vetor = unlist(lista)
vetor

#do.call - executa uma funćão em um objeto
# familia apply (lapply) a cada elemento, substitui um loop
# do.call a um objeto inteiro

lista2 = list(1:3, 3:6, 6:9)
lista2

lapply(lista2, sum)
do.call(sum, lista2)

desafio = data.frame(read.csv(file = "vgsales.csv", sep = ",", header = TRUE))
desafio

