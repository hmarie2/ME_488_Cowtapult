## Data eval

# read in the data
results <- read.csv("data_csv.csv")

# make the factors recognizable to R
results$A <- factor(results$A)
results$B <- factor(results$B)
results$C <- factor(results$C)
results$D <- factor(results$D)

# run ANOVA tests
library(car)

DistLM <- lm(formula = YLD ~ A*B*C*D, data=results)
summary(DistLM)
anova(DistLM)

#########

#0.5712
DistLM2 <- lm(formula = YLD ~ A+B+C+D, data=results)
summary(DistLM2)
anova(DistLM2)

#0.4902
DistLM3 <- lm(formula = YLD ~ A+B+D, data=results)
summary(DistLM3)
#anova(DistLM3)

#0.4642
DistLM4 <- lm(formula = YLD ~ A+C+D, data=results)
summary(DistLM4)
#anova(DistLM4)

#0.3491
DistLM4 <- lm(formula = YLD ~ A+B+C, data=results)
summary(DistLM4)
#anova(DistLM4)

#0.3491
DistLM5 <- lm(formula = YLD ~ C+B+D, data=results)
summary(DistLM5)
#anova(DistLM5)
