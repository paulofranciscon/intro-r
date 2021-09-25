#Datas

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd

#Manipulaćão em datas

hoje = Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()

?strptime

dia = as.Date('2021-01-05', format='%Y-%m-%d')
dia
dia + 1

as.Date('')
date()
