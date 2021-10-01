a <- -10

if (a > 0) {
  print("Positive")
} else {
  print("Negative")
}

my_cars$new_var <- ifelse(my_cars$carb >= 4 | my_cars$cyl > 6, 1, 0)

result <- ifelse(mean(my_vector) > 20, "My mean is great",
                 "My mean is not so great")

str(AirPassengers)

good_months <- AirPassengers[c(F, AirPassengers[2:144] > AirPassengers[1:143])]

moving_average <- numeric(135)
for (i in 1:135) {
  moving_average[i] <- mean(AirPassengers[i:(i+9)])
}

