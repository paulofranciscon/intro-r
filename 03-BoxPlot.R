# BoxPlot - gráfico de caixa - comparar de forma gráfica estatísticas
?boxplot

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")

?sleep
View(sleep)

boxplot(data = sleep, extra ~ group,
        main='BoxPlot com dataset Sleep',
        col.main = 'red',
        ylab='horas',
        xlab = 'droga')

# Notaćão '~' é a forma como o R representa a 
# relaćão entre duas variáveis

# Média

medias = by(sleep$extra, sleep$group, mean)
medias

#Adicionando a media ao gráfico
points(medias, col='blue')

# Mudando o sentido do boxplot
boxplot(data = sleep, extra ~ group,
        main = 'Boxplot com o dataset Sleep',
        col.main = 'red',
        ylab = 'Horas',
        xlab = 'Droga',
        horizontal = TRUE)

# Colorindo o boxplot
boxplot(data= sleep, extra ~ group,
        main = 'Boxplot com dataset Sleep',
        col.main = 'red',
        ylab = 'Horas',
        xlab = 'Drogas',
        horizontal = TRUE,
        col = c('ORANGE', 'CYAN')
        )
# note que trabalhamos camada a camada
