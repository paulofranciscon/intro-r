#Gráfico de Pizza - Pie Charts
setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")

?pie

fatias = c(10,30,60)
labels_fatias = c('coelho', 'gato', 'chachorro')

dados = paste(fatias, labels_fatias)
dados
#Colocando em formato de porcentagem
dados = paste(fatias , '% ', labels_fatias , sep='')
dados
#Construindo um gráfico de Pizza

pie(fatias, labels = dados,
    col =c('darksalmon', 'gainsboro', 'lemonchiffon4'),
    main = 'Distribuićão de pets')

# Utilizando um dataframe built in
attach(iris)
values = table(Species)
values
labels = paste(names(values))
labels
pie(values, labels = labels, main = 'Distribuićão de Epécies')

# Gráficos 3D
install.packages('plotrix')
library(plotrix)
pie3D(fatias, labels=dados, explode=0.05, main='Distribuićão de Pets')
