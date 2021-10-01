hist(df$mpg, breaks = 20, xlab = "MPG")
boxplot(mpg~am, df)
plot(df$mpg, df$hp)

ggplot(df, aes(x = mpg))+
  geom_histogram(fill = "white", col = "black", binwidth = 2)

ggplot(df, aes(x = mpg))+
  geom_dotplot()

ggplot(df, aes(x = mpg))+
  geom_density(fill = "blue")

ggplot(df, aes(x = mpg, fill = am))+
  geom_dotplot()

ggplot(df, aes(x = mpg, fill = am))+
  geom_density(alpha = 0.5)

ggplot(df, aes(x = am, y = hp, col = vs))+
  geom_boxplot()

ggplot(df, aes(x = mpg, y = hp, col = vs, size = qsec))+
  geom_point()

View(iris)

ggplot(airquality, aes(x = as.factor(Month), y = Ozone))+
  geom_boxplot()

ggplot(mtcars, aes(x = mpg, y = disp, col = hp))+
  geom_point()

ggplot(iris, aes(Sepal.Length, Sepal.Width, col = Species,size = Petal.Length)) +
  geom_point()


