#Fatores Ordenados

#Dir
setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

numeros = c(1,1,3,2,3,2,1,1,3,2,3,2,1,3,1,2,1)
fator_numeros = factor(numeros)
fator_numeros
levels(fator_numeros)

leg_numeros = factor(numeros, labels = c('a', 'b', 'c'))
leg_numeros

# Fatores não ordenados
profissoes = c('Professor', 'Advogado','Analista', 'Vendedor', 'Cientista de Dados', 'Estatistico' )
profissoes

# Mas podemos forćar a hierarquia na ordenaćão
fator_profissoes = factor(profissoes)
fator_profissoes
is.ordered(fator_profissoes)

ord_fator_profissoes = factor(profissoes, levels = c('Vendedor', 'Professor', 'Analista', 'Advogado', 'Estatistico', 'Cientista de Dados'), ordered = TRUE)
ord_fator_profissoes
is.ordered(ord_fator_profissoes)

#Fatores em dataframe

# Carregar um arquivo CSV
df = data.frame(read.csv(file='vgsales.csv', header = TRUE, sep = ','))
head(df)
View(df)
str(df)
summary(df)
