# Probability of equiprobable events
# Random experiment: Rolling two dice

dice1 <- sample(1:6, size = 100, replace = TRUE)
dice2 <- sample(1:6, size = 100, replace = TRUE)

barplot(prop.table(table(dice1)), xlab = "Rolling the dice 1",
        ylab = "Proportion",
        col = "lightblue")
abline(h = 1/6, col = 2)

barplot(prop.table(table(dice2)), xlab = "Rolling the dice 2",
        ylab = "Proportion",
        col = "lightgreen")
abline(h = 1/6, col = 2)

# Proportion of times that equal faces were obtained
mean(dice1 == dice2)

# Proportion of times that the sum of the results was equal to 10
mean(dice1 + dice2 == 10)

# Proportion of times that the sum of the results was less than 5
mean(dice1 + dice2 < 5)

# Proportion of times that one face was twice the other
mean( (dice1 == 2*dice2) | (dice2 == 2*dice1))