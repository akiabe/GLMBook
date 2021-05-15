d <- c(-1, -1, 0, 0, 1, 3, 5, 6, 7, 7)
length(d)

((-1) + (-1) + 0 + 0 + 1 + 3 + 5 + 6 + 7 + 7) / 10

mean(d)

kitaiti <- mean(d)
kitaiti

sd(d)

hyoujunGosa <- sd(d) / sqrt(length(d))
hyoujunGosa

tValue <- (kitaiti - 0) / hyoujunGosa
tValue

(1- pt(tValue, df = length(d) - 1))*2

t.test(d)

