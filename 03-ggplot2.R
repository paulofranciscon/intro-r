# ggplot2
# Criando gráficos profissionais

# Sistema gráfico completo, alternativo ao sistema básico de graficos do R.
# Muito poderoso que o sistema báscio de plotagem. Com isso o nível de complexidade
# é um pouco maior. Mais općões de modificaćão, legendas prontas e formataćão mais sólida

setwd('/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/')

install.packages('ggplot2', dep=TRUE)
install.packages("proto")
library(ggplot2) #Chamada ao ggplot2

# Carregando uma massa de dados bult in reshape2
install.packages("reshape2")
data(tips, package='reshape2')
View(tips)

#Criando um gráfico básico
qplot(total_bill, tip, data=tips, geom="point")

#Construindo camadas
camada1 = geom_point(
  mapping = aes(x=total_bill, y=tip, color=sex), #argumento mapping que vai descrever a relaćão do smeus dados
  data=tips,
  size=3
)

ggplot() + camada1 # Exibindo o gráfico com a camada1

?aes

# Modelo de regressão
modelo_base = lm(tip~total_bill, data=tips)
modelo_fit = data.frame(
  total_bill = tips$total_bill,
  predict(modelo_base, interval='confidence')
)

head(modelo_fit)

#Camada2
camada2 = geom_line(
  mapping = aes(x=total_bill, y= fit),
  data=modelo_fit,
  color='darkred'
)

ggplot() + camada1 + camada2

# Camada3
camada3 = geom_ribbon(
  mapping = aes(x=total_bill, ymin=lwr, ymax=upr),
  data = modelo_fit,
  alpha = 0.3
)

ggplot() + camada1 + camada2 + camada3



#----------------------------------------------------------------

source("http://www.openintro.org/stat/data/arbuthnot.R")
library(ggplot2)
ggplot() +
  geom_point(aes(x = year,y = boys),data=arbuthnot,colour = '#3399ff') +
  geom_point(aes(x = year,y = girls),data=arbuthnot,shape = 17,colour = '#ff00ff') +
  xlab(label = 'Year') +
  ylab(label = 'Rate')
