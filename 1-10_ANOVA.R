1 - pf(16, 2, 3)

d2 <- data.frame(
  length = c(2, 4, 10, 12, 6, 8),
  medicine = c("A", "A", "B", "B", "C", "C")
)

d2

mean(d2$length)

tapply(d2$length, d2$medicine, mean)

modelANOVA <- lm(length ~ medicine, data = d2)
anova(modelANOVA)
