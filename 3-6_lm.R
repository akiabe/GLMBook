d3 <- data.frame(
  beer = c(4,3,5,5,8),
  temperature = c(1,2,3,4,5)
)

plot(beer ~ temperature, xlim=c(0,6), ylim=c(2,8), data=d3)

yosoku <- function(a, b, temperature) {
  beerhat <- a*temperature + b
  return(beerhat)
}

yosoku(a=2, b=1, temperature=3)

a <- 2
b <- 2
beerhat <- yosoku(a, b, d3$temperature)
beerhat

zansa <- d3$beer - beerhat
zansa

sum(zansa^2)

plot(
  beer ~ temperature,
  ylim=c(2,13),
  main="a=2,b=2 Prediction line",
  data=d3
)

abline(a=2,b=2)

calcRSS <- function(para) {
  beerhat <- yosoku(para[1], para[2], d3$temperature)
  zansa <- d3$beer - beerhat
  RSS <- sum(zansa^2)
  return(RSS)
}

calcRSS(c(2,2))

optim(c(2,2), calcRSS)

lm(beer ~ temperature, data=d3)

plot(
  beer ~ temperature,
  ylim=c(2,13),
  main="RSS",
  data=d3
)

abline(lm(beer ~ temperature, data=d3))

1 - pf(7.5, 1, 3)

modelNull <- lm(beer ~ 1, data=d3)
modelNull

modelKaiki <- lm(beer ~ temperature, data=d3)
modelNull <- lm(beer ~ 1, data=d3)

anova(modelKaiki)

anova(modelKaiki, modelNull)

summary(modelKaiki)
