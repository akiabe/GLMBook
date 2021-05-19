d4 <- read.csv("data0_linearModel.csv")
head(d4, n=5)

lmModel_1 <- lm(length ~ food + medicine, data=d4)
lmModel_2 <- lm(length ~ medicine, data=d4)
lmModel_3 <- lm(length ~ food, data=d4)

anova(lmModel_1)
anova(lmModel_1, lmModel_3)
anova(lmModel_1, lmModel_2)

lmModel_Null <- lm(length ~ 1, data=d4)
anova(lmModel_3, lmModel_Null)


library(car)

Anova(lmModel_1)
