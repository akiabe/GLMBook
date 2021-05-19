d5 <- read.csv("data1_typeII_anova.csv")
head(d5, n=5)

plot(d5)

par(mfrow=c(1,2))
boxplot(sell ~ sex, data=d5)
boxplot(sell ~ time, data=d5)
par(mfrow=c(1,1))

par(mfrow=c(1,2))
plot(n.sheets ~ experience, data=d5)
mosaicplot(time ~ sex, data=d5)
par(mfrow=c(1,1))

sellModel_1 <- lm(sell ~., data=d5)

library(car)
Anova(sellModel_1)

sellModel_2 <- update(sellModel_1, ~.-sex)
Anova(sellModel_2)

sellModel_3 <- update(sellModel_2, ~.-experience)
Anova(sellModel_3)

coef(sellModel_3)

