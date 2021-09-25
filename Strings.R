#Strings

#Configuracão do diretorio
setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

string = "Introducao Linguagem R"

#Convertendo numeto em texto
x = 9
as.character(x)

# Concatenando string
objeto = 'mesa'
cor = 'branca'
cat(objeto, cor)

#Imprimindo
sprintf('A %s é %s', objeto, cor)

#Extraindo pedaćo da string
nchar(string)
substr(string, start=13, stop=24)

#Mudando a captalizaćao
toupper(string)
tolower(string)

matrix(data=meus_dados, nrow = 5, ncol = 2)
matrix
(x == 9) & (x == 8)
3^2
3**2
