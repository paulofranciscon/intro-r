  
setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")


# Limpeza, Transformaćão e Manipulaćão de Dados

install.packages('dplyr')
install.packages('tidyr')
install.packages('readr')

library(dplyr)
library(tidyr)
?tidyr
library(readr)

# Carregando 
sonodf = read.csv('sono.csv')
View(sonodf)
str(sonodf)

# Funcão glimpse() pode ser usado no lugar da func str()
glimpse(sonodf)

# aplicando a func mutation()
glimpse(mutate(sonodf, peso_libras = sono_total/0.45359237))

# contagem
count(sonodf, cidade)
hist(sonodf$sono_total)

# Amostragem
sample_n(sonodf, size=10)

# select()
sleepData = select(sonodf, nome, sono_total)
head(sleepData)
select(sonodf, nome:pais)

# filter()
filter(sonodf, sono_total >= 16)
filter(sonodf, sono_total >= 16, peso >= 80)
filter(sonodf, cidade %in% c('Recife', 'Curitiba'))

# arrange()
sonodf %>%
  arrange(cidade) %>%
  head

sonodf %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  filter(sono_total >= 16)

sonodf %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, desc(sono_total)) %>%
  filter(sono_total >= 16)

# mutate()
?mutate
head(sonodf)

sonodf %>%
  mutate(novo_indice = sono_total/peso) %>%
  head

sonodf %>%
  mutate(novo_indice = sono_total/peso,
         peso_libras = peso/045359237)%>%
  head

# summarize()

sonodf %>%
  summarize(media_sono = mean(sono_total))
#
sonodf %>%
  summarize(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())

# group by()
sonodf %>%
  group_by(cidade) %>%
  summarise(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())  


## Prova
w <- c(2, 7, 8)
v <- c("A", "B", "C")
x <- list(w, v)

x[[2]][1] <- "K"
x

x[[1]][2] <- "K"
x

M=matrix(c(1:10),nrow=5,ncol=2, dimnames=list(c('a','b','c','d','e'),c('A','B')))
M['e', 'A'] 

M=matrix(c(1:9),3,3,byrow=T, dimnames=list(c('a','b','c'),c('d','e','f')))
rownames(M)

x = 3
dobro = function(x){x+x}
dobro

x = 5
while (x < 10){
  x  = x + 1
  print(x)
}

?plot

u = 8
v = 9
z = u > v
z

ista1 <- list(a=(1:20), b=(45:77))
sapply(ista1, sum)
