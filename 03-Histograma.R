# HIstograma - grafico de contagem e de distribuićão de frequencia. Confundível com o grafico de barras

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

#caregando dados
?cars
class(cars)
attach(cars)
View(cars)

dados = cars$speed
dados

#Construindo o histograma
hist(dados)
#Os blocos do histograma são chamado de BINS
# Os BINS são diferentes do grafico de colunas
# Podemos alterar o tamanho dessas caixinhas com o parametro breaks

hist(dados, breaks=10, main = 'Histograma do dataset cars', labels=TRUE)

# temos a mesma informaćão distribuida de uma forma diferente

hist(dados, breaks = c(0,5,10,20,30), main = 'Histogram', labels = TRUE)

# Definindo o limite do eixo Y
hist (dados, breaks=10, ylim=c(0,10), main='Histogram', labels=TRUE)

#adicionando uma linha no histograma
grafico = hist(dados, breaks=10, main='Histogram')
xaxis = seq(min(dados), max(dados), length=10)
yaxis = dnorm(xaxis, mean=mean(dados), sd=sd(dados))
yaxis = yaxis*diff(grafico$mids)*length(dados)
lines(xaxis, yaxis, col='red')
