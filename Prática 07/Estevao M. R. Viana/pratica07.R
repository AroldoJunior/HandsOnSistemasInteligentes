library(jpeg)
library(ripa)

#setwd("~/Arquivos UFPI/PERIODOS/6º PERIODO/SISTEMAS INTELIGENTES/Codigos R/Pratica 07/")

x <- readJPEG("flor.jpg")
dim(x)
r <- imagematrix(x, type = "grey")
svd1 <- svd(r)
plot(svd1$d^2/sum(svd1$d^2), pch=19,main="Variância explicada dos vetores singulares", xlab="Singluar vector",ylab="Variance explained")


approx1 <- svd1$u[,1] %*% t(svd1$v[,1]) * svd1$d[1]
approx2 <- svd1$u[,1:2] %*% diag(svd1$d[1:2])%*% t(svd1$v[,1:2])
approx5 <- svd1$u[,1:5] %*% diag(svd1$d[1:5])%*% t(svd1$v[,1:5])
approx10 <- svd1$u[,1:10] %*% diag(svd1$d[1:10])%*% t(svd1$v[,1:10])
approx20 <- svd1$u[,1:20] %*% diag(svd1$d[1:20])%*% t(svd1$v[,1:20])
approx50 <- svd1$u[,1:50] %*% diag(svd1$d[1:50])%*% t(svd1$v[,1:50])
approx100 <- svd1$u[,1:100] %*% diag(svd1$d[1:100])%*% t(svd1$v[,1:100])
approx200 <- svd1$u[,1:200] %*% diag(svd1$d[1:200])%*% t(svd1$v[,1:200])
approx500 <- svd1$u[,1:500] %*% diag(svd1$d[1:500])%*% t(svd1$v[,1:500])

#Aproximação considerando apenas o primeiro vetor singular
image(t(approx1)[,nrow(approx1):1])

#Aproximação considerando os 2 primeiros vetores singulares 
image(t(approx2)[,nrow(approx2):1])

#Aproximação considerando os 5 primeiros vetores singulares 
image(t(approx5)[,nrow(approx5):1])

#Aproximação considerando os 10 primeiros vetores singulares 
image(t(approx10)[,nrow(approx10):1])

#Aproximação considerando os 20 primeiros vetores singulares 
image(t(approx20)[,nrow(approx20):1])

#Aproximação considerando os 50 primeiros vetores singulares 
image(t(approx50)[,nrow(approx50):1])

#Aproximação considerando os 100 primeiros vetores singulares 
image(t(approx100)[,nrow(approx100):1])

#Aproximação considerando os 200 primeiros vetores singulares 
image(t(approx200)[,nrow(approx200):1])

#Aproximação considerando os 500 primeiros vetores singulares 
image(t(approx500)[,nrow(approx500):1])
