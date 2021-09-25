# Funções especiais

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

#Expressòes regulares

# grep()
# grepl()
# sub()
# gsub()
# regexpr()
# gregexpr()

str = c('Nessa unidade', 'sobre estruturas de controles', 'e funcoes',
        'trouxe para você', 'um pouco sobre', 'expressões', 'regulares',
        'para aprendermos a', 'buscar padrões')
length(str)
str

?grep
# O grep questiona se há alguma palavra ou expressão que tenha o padrão 'es'
grep('es', str, value=F)
# Para trazer o elemento, valor = TRUE OU T
grep('es', str, value=TRUE)

grepl('es', str)
gsub('para', 'pra', str)
sub('para', 'PARA', str)
