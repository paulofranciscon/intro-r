# FATORES 

setwd("/media/paulo/DISC2/PUC/5 INTRODUCAO LINGUAGEM R/SCRIPTS/")
getwd()

#criando vetores numericos e character
x = c('a', 'b','c')
class(x)

y = c(1,2,3)
class(y)

vetor = c("M", "F", "M", "M")
vetor

factor_vetor = factor(vetor)
factor_vetor
class(factor_vetor)
class(vetor)

# Variáveis categoricas nominais
cores = c("branco", "amarelo", "azul", "preto", "verde")
cores
fator_cores = factor(cores)
fator_cores
class(fator_cores)
levels(fator_cores)

# Variáveis categóricas ordinais
escolaridade = c("Ensino Médio", "Graduaćão", "Especializaćão - Pós Graduaćão", "Mestrado", "Doutorado", "Pós - Doutorado")
escolaridade

fator_escolaridade = factor(escolaridade, order=TRUE, levels = c("Ensino Médio", "Graduaćão", "Especializaćão - Pós Graduaćão", "Mestrado", "Doutorado", "Pós - Doutorado"))
levels(fator_escolaridade)

#Summary - Visão geral da frequencia/conteúdo nas variáveis
summary(fator_escolaridade)
summary(escolaridade)

?factor

