attach(Amazon_Top_50_Books_2009_2021_Reworked_Sheet_1_)
df = (Amazon_Top_50_Books_2009_2021_Reworked_Sheet_1_)

install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
View(df)

glimpse(df)
excluir = c("Price")
df = df[ , !(names(df) %in% excluir)]

gsub("[[:punct:]]", "", df$Price_r)
df$Price_r <- as.numeric(df$Price_r)
soma = summary(df$Price_r)
mediaPreco = mean(df$Price_r)

genre_fiction = df %>% filter(Genre=="Fiction")
genre_non_fiction = df %>% filter(Genre=="Non Fiction")
View(table(df$Name))

somaF = sum(genre_fiction$Price_r)
somaNF = sum(genre_non_fiction$Price_r)

best_seller = df %>% filter(Name=="Publication Manual of the American Psychological Association, 6th Edition")
View(best_seller)

somaTudo = sum(best_seller$Price_r)

paste("A média de faturamento dos livros vendidos é", mediaPreco)
paste("A soma dos preços de todos os livros é: ", soma)
paste("O valor total de livros vendidos de Ficção Cientifica é de: ", somaF)
paste("O valor total de livros vendidos de Ficção Cientifica é de: ", somaNF)
paste("O livro mais vendido foi o:", best_seller)
paste("O livro mais vendido faturou", somaTudo, "mil reais")
