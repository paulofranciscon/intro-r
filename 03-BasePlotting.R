# Unidade3

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

#Graficos com o Base Plotting System 

#Lista os pacotes básicos
search()

#Demonstraćão
demo(graphics)

x = 1:10
y = 11:20

plot(x, y)

#Dois vetores peso e altura

peso = c(65,78,96,54,68,45)
altura = c(165, 170,180,168,155,160)
plot(peso,altura)

?lynx
plot(lynx)

#Montando as camadas
plot(lynx, ylab='legenda Y', xlab='Legenda X')
plot(lynx, main='Título e cor no grafico', col='blue')

library(datasets)
hist(warpbreaks$breaks)

#Parametros
# col - cor 
# lty - tipo de linha
# lwd - largura da linha
# pch - símbolos no plot
# xlab - label eixo x
# ylab - label eixo y
# las - como os labels dos eixos são orientados
# bg - background color
# mfrow - numeor de plots por linha
# mfcool - numeor de plots por coluna

# Funćões básicas de plot
# plot() - scatterplot
# lines() - adiciona linhas ao grafico
# points() - adiciona pontos ao gráfico
# text() - adiciona label ao gráfico
# title() - adiciona título ao grafico

#Exemplo

plot (peso, altura, pch = 2)

par(mfrow = c(1,2))
plot(x,y)
plot(peso, altura)
par(mfrow=c(1,1))

?par

# Salvando graficos

# Formato PNG
png('grafico_png', width = 500, height = 500, res = 72)
plot(peso, altura)
dev.off()

# PDF
pdf('grafico_pdf')
plot(peso, altura)
dev.off()

# Verificando as cores disponiveis para parametrizaćão
colors()
