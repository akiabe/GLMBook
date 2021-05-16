d2 <- data.frame(
  length = c(2, 4, 10, 12, 6, 8),
  medicine = c("A", "A", "B", "B", "C", "C")
)

modelANOVA <- lm(length ~ medicine, data = d2)
coef(modelANOVA)

model_1 <- lm(length ~ medicine, data = d2)
model_2 <- lm(length ~ 1, data = d2)

anova(model_1)
anova(model_2)

anova(model_1, model_2)

