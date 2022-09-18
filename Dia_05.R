# Iniciando com a lenda :)

print("Hello,World!")
#
#
#
#
attach(`Am`)

df = (`Amazon.Top.50.Books.2009.2021...Reworked.Sheet.(1)`)
df <- read.csv(`Amazon.Top.50.Books.2009.2021...Reworked.Sheet.(1)`, sep = ';', dec = ',')

df = rename(df, Nome = Name, Ator = Author, Avaliacao_Usuario = User.Rating, 
            Quantidade_Avaliacao = Reviews, Preco = Price_r, Ano = Year, Genero = Genre)
View(df)
glimpse(df)
excluir = c("Price")
df2 = df[ , !(names(df) %in% excluir)]
View(df2)
glimpse(df2)

#df2$Preco <- as.integer(df2$Preco)
df2$Preco <- as.numeric(as.character(df2$Preco))
df2$Quantidade_Avaliacao <- as.integer(as.character(df2$Quantidade_Avaliacao))

media = mean(df2$Avaliacao_Usuario)
paste("A média de avaliação dos usuários é de", media)

avalicoes = sd(df2$Quantidade_Avaliacao)
paste("De acordo com os livros que tem na tabela a quantidade de 
      avaliação por cada livro variou: ", avaliacoes)

somaPreco = sum(df2$Preco)
paste("A soma dos preços de todos os livros no data frame é: ", somaPreco)
mediaPreco = mean(df2$Preco)


df2$Genero <- factor(df2$Genero, labels = c("Ficção cientifica", "Não Ficção"), levels = c(Fiction, Non Fiction))
hist(df2$Genero, col="red")
intervalo_de_classes = seq(2006, 2010, 2016)
tabela_de_classes = table(cut(df2$Ano, breaks = intervalo_de_classes, right=FALSE))
barplot(tabela_de_classes)




