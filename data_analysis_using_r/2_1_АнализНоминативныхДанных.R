df <- read.csv("grants.csv")
View(df)
str(df)
df$status <- as.factor(df$status)
str(df)
levels(df$status) <- c("Not funded", "Funded")

# df$status <- factor(df$status, labels = c("Not funded", "Funded"))
str(df)


t1 <- table(df$status)
t1

dim(t1)

# 2d table
t2 <- table( status = df$status, field = df$field)
t2
prop.table(t2)
prop.table(t2, 1)
prop.table(t2, 2)

t3 <- table(Years = df$years_in_uni, field = df$field, status = df$status)
t3

dimnames(HairEyeColor)

HairEyeColor[ , ,'Male']

prop.table(HairEyeColor[,, 'Male'], 2)[3,2]

sum(HairEyeColor[ , ,'Female'][,4])

barplot(t1)
barplot(t2)

barplot(t2, legend.text = T, args.legend = list(x = "topright"), beside = F)
barplot(t2, legend.text = T, args.legend = list(x = "topright"), beside = T)

mosaicplot(t2)

mydata <- as.data.frame(HairEyeColor)
mydata <- mydata[mydata$Sex == "Female",]
ggplot(data = mydata, aes(x = Hair, y = Freq, fill = Eye)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))

# h0 - нет статистически значимых различий
# h1 - есть статистически значимые различия
binom.test(x = 5, n = 20, p = 0.5)
t1
binom.test(t1)


# Chi-Square

typeof(chisq.test(t1))

chi <- chisq.test(t1)
chi$expected
chi$observed

t2
chisq.test(t2)

# Fisher's Exact test
fisher.test(t2)

test <- HairEyeColor[,,"Female"]
chisq.test(test[2,])


View(diamonds)
test <- chisq.test(table(diamonds$cut, diamonds$color))$statistic
test

diamonds

?fisher.test

factor_price <- ifelse(diamonds$price >= mean(diamonds$price), 1, 0)
factor_carat <- ifelse(diamonds$carat >= mean(diamonds$carat), 1, 0)
chisq.test(factor_price, factor_carat)$statistic


fisher_test <- fisher.test(mtcars$am, mtcars$vs)
typeof(fisher_test)
fisher_test$p.value

