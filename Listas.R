#Configurando o diretório
setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

lista1 = list('a','b', 'c')
lista1
lista2 = list(c('A', 'B'), 'C$', 'D$')
lista2
lista3 = list(matrix(c('A1','A2', 'A3', 'A4'), nrow = 2), c('A3', 'A4', 'A5'), 'SOLO')
lista3

#slicing
lista2
lista2[2]

#slicing dentro da dimensao

lista3
lista3[[1]][3]
lista3[[1]][3] = 'alter'

# Appoint(nomear) the list
lista3
names(lista3) = c('matrix', 'vector', 'alone')
lista3

