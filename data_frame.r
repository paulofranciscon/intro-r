#Data Frames

#Configuracão do diretorio
setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

#Vetor, matriz e array trabalham apenas com um tipo de dado
#DataFrame: matriz com diferente tipos de dados
#Mais comum tipo de dados utilizado em análise de dados

# dataFrame bult in do R
View(iris)
length(iris)
dim(iris)
mode(iris)
class(iris)
typeof(iris)
nrow(iris)
ncol(iris)
dim(iris)
head(iris)
tail(iris)


#Criar um novo dataframe vazio
df = data.frame()
df

#Criando vetore vazios
aluno = character()
disciplina = character()
nota = numeric()

df = data.frame(c(aluno, disciplina, nota))
df

#Criando vetores completos

aluno = c('Ana', 'Alana', 'Jose', 'Jo', 'Paulo', 'Ju')
disciplina = c('Matematica', 'Historia', 'Geografia', 'Matemática', 'Portugues', 'Matemática')
nota = c(8.9, 9.0, 8.7, 9.7, 8.8, 9.9)

df = data.frame(aluno, disciplina, nota)
df

df = data.frame(c(aluno, disciplina, nota))
df


#adicionando uma nova coluna
comportamento = c('bom', 'regular', 'otimo', 'bom', 'otimo', 'otimo')
novo_df = cbind(df, comportamento)
novo_df

#Extraindo um vetor
df$nota

#extraindo um valor
df[3,2]

#Lendo um arquivos CSV
vgsales = read.csv(file='vgsales.csv', header=TRUE, sep=',')
df_vgsales = data.frame(vgsales)

View(df_vgsales)
head(df_vgsales)
summary(df_vgsales)

#Construindo graficos
hist(vgsales$EU_Sales)
 