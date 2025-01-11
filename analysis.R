# R course for beginners
# Week 9
# Assignment by Yuval Gedulter, ID 315668301

N = 100
sample_number = seq(1, N, 1)
age = runif(N, 15, 70)
gender = factor(c("Male", "Female"), levels = c("Male", "Female"))
mean_rt = runif(N, 200, 6000)
depression = runif(N, 0, 100)
mean_sleeping = rnorm(N, 7, 5)
data <- data.frame(sample_number, age, gender, mean_rt, depression, mean_sleeping)
View(data)