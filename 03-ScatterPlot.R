# ScattePlots - gráficos de dispersão

# mostra a relação entre duas variáveis
# variável dependente X variavel independente
# peso X altura
# número de quartos X preço do imóvel

# Fixando a semente
set.seed(24)

# Gerando valores randômicos
x = rnorm(10, 8, 10)
y = rpois(10, 10)
z = rnorm(10, 6, 7)
t = rpois(10, 5)

# Criando o ScatterPlot
plot(x, y, col='blue', pch=4, main = 'ScatterPlot',
     col.main='blue', cex.main=1.5, xlab='Variável X',
     ylab='Variável Y')

# Acrescentando dados, múltiplas relações 
points(z,t,col='red', pch=10)
points(y,t,col='black', pch=9)

# Acrescentando uma legenda
legend(14, 16.5, legend=c('relaćão 1', 'relaćão 2', 'relaćão 3'),
       col=c('blue', 'red', 'black'), pch=c(4,10,9),
       cex = 0.65, bty='n')

write.table(mtcars, file='mtcars.txt')
