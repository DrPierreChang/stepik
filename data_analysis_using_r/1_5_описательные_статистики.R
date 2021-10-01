df <- mtcars

str(df)

df$vs <- factor(df$vs, labels = c("V", "S"))
str(df)

?mtcars

df$am <- factor(df$am, labels = c("Automatic", "Manual"))

sd(df$hp[df$cyl != 3 & df$am == "Automatic"])

mean_hp <- aggregate(x = df$hp, by = list(df$vs), FUN = mean)

colnames(mean_hp)

colnames(mean_hp) <- c("VS", "Mean HP")

aggregate(hp ~ vs, df, mean)

aggregate(hp ~ vs + am, df, mean)

aggregate(x = df[, -c(8,9)], by = list(df$am), FUN = median)

aggregate(x = df[, c(1,3)], by = list(df$am, df$vs), FUN = sd)

aggregate(cbind(mpg, disp) ~ am + vs, df, sd)

describe(df)

describeBy(x = df[, -c(8,9)], group = df$vs)

all(!is.na(df))

View(airquality)
result <- subset(x = airquality, Month %in% c(7,8,9))
sum(!is.na(result$Ozone))
aggregate(Ozone ~ Month, result, length)

result <- aggregate(Ozone ~ Month,
                    subset(x = airquality, Month %in% c(7,8,9)), length)

str(airquality)
describeBy(x = airquality[,-c(5,6)], group = airquality$Month)

View(iris)


aggregate(cbind(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) ~ Species,
          subset(iris, Species == "virginica"), median)

my_vector <- c(1, NA, 2, NA, 3, NA, 4, NA)

na.omit(my_vector, mean)

?replace

mean(my_vector, na.rm = T)

fixed_vector <- replace(my_vector, is.na(my_vector),
                        mean(my_vector, na.rm = T))
