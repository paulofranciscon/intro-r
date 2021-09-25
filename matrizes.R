# OPERADORES

# POTENCIA
8^2
8**2

# MÓDULO
8%%3

### OPERADORES RELACIONAIS

# ATRIBUIÇÃO
Z = 9
X <- 2
mode(x)

#Exemplos de matriz
matrix(c(1,2,3,4,5,6), nrow=3)
ma1 = matrix(c(1,2,3,4,5,6), nrow=2)
matrix(c(1,2,3,4,5,6), ncol=3)
matrix(c(1,2,3,4,5,6), ncol = 1)
ma = matrix(1:20, nrow = 2)
mode(ma)
typeof(ma)
class(ma)
length(ma)
dim(ma)

# Criando matriz diagonal
elementos = c(1,2,3,1,5,8,4,8,9)
diag(elementos)

# Criando uma matriz transposta
t(ma)
ma #  Matriz origem
t(ma1)

# Matriz inversa
matriz1 <- matrix(1:4, ncol = 2, nrow = 2)
matriz1
matriz1_solve <- solve(matriz1)
matriz1_solve
#ou
sh <-solve(matriz1); sh

# fatiar matriz
matriz <- matrix(c(1:6), ncol=2)
matriz
matriz[2,2] # row2, col2
matriz[1,2] # row1, col2
matriz[,2]  # all row, col2

#Operacões com matrizes
matriz1 <- matrix(1:4, nrow = 2); matriz1
matriz2 <- matrix(5:8, nrow = 2); matriz2

matriz1 * matriz2
matriz1 + matriz2
matriz1 - matriz2
matriz1 / matriz2

vetor = c(2,4,6,8)
matriz1 * vetor

print("Multiplicaćão matricial")
matriz1 %*% matriz2

# Nomeando dimensões (linhas e colunas) da matriz1
dimnames(matriz1) <- (list(c('lin1', 'lin2'), c('col1', 'col2'))) ; matriz1

# Combinações entra matrizes
cbind(matriz1, matriz2)
rbind(matriz1, matriz2)

#Linhas, colunas e dimensões
array1 = array(1:8, dim = c(1,2,4)) ; array1

