## Data eval

# read in the data
results <- read.csv("data_csv.csv")

# make the factors recognizable to R
results$A <- factor(results$A)
results$B <- factor(results$B)
results$C <- factor(results$C)
results$D <- factor(results$D)

# run ANOVA tests
DistAOV <- aov(YLD~A+B+C+D, data=results)
anova(DistAOV)

DistLM <- lm(YLD~A+B+C+D, data=results)
summary(DistLM)