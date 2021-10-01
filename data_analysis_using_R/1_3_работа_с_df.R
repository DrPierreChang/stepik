evals <- read.table("evals.csv", sep = ",", header = T, dec = ".")
View(evals)
?read.table
?read.csv

mydata <- read.csv("evals.csv", stringsAsFactors = T)

View(mydata)

str(mydata)

summary(mydata)

names(mydata)

# Variables
mydata$score

nrow(mydata)

mydata$number <- 1:nrow(mydata)

ncol(mydata)

head(mydata[mydata$gender == "male",1:4])

head(subset(mydata, gender == 'male'))

my_cars <- mtcars
my_cars$even_gear <- 1
my_cars[my_cars$gear %% 2 != 0,"even_gear"] <- 0

mpg4 <- mtcars[mtcars$cyl == 4, "mpg"]

mini_mtcars <- mtcars[c(3, 7, 10, 12, nrow(mtcars)),]

my_cars$even_gear <- NULL
my_cars
