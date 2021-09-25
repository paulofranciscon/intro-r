setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")

?barplot

dados = matrix(c(234,234,456,678,345,67,64,345,634,456,36,346), nrow=3, byrow=TRUE)
dados

colnames(dados) = c('0', '1-150', '151-300', '>300')
rownames(dados) = c('Jovem', 'Adulto', 'Idoso')

dados
barplot(dados, beside=TRUE)
# beside (ao lado), uma barra para cada faixa

barplot(dados)
# stacked bar (barras empilhado)

barplot(dados, col=c('red', 'blue', 'yellow'), beside=TRUE)
legend('topright', pch=1, col=c('red', 'blue', 'yellow'), legend=c('Jovem', 'Adulto', 'Idoso'))

#INVERTENDO AS POSIĆÕES - FAIXA ETÁRIA E FAIXA DE QUANTIDADE
barplot(t(dados), col=c('tomato', 'blue', 'cyan', 'magenta'), beside=TRUE)

?legend

colors()
