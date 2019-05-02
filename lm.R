x=runif(100)
y=2*x + rnorm(100,sd=0.5)
plot(x,y)
cor(x,y)

abline(a=0,b=2) # valós modell


elso.lm = lm(y ~ x) # tengelymetszettel
lm(y ~ x - 1) # tengelymetszet nélkül

elso.lm
elso.lm$coefficients # Paraméterek
abline(elso.lm, col=2)
elso.lm$coefficients[1]
coef(elso.lm)
summary(elso.lm)
