library(jtools)
library(ggplot2)
library(MBESS)
#load 
my_survey <- read.csv("~/SURV400-AU24/SURV400 FINAL/SURV400Final- DA2.csv", sep = ",", header = TRUE)
summary(my_survey)

#glm model
survey_glm_model <- glm(outcome~ perceived_stigma + perceived_access_1 + Responsibilities + involvement_scale_1, data = my_survey)
summary(survey_glm_model)

#plotting a graph
ggplot(my_survey, aes(x = perceived_stigma, y = outcome)) +
  geom_point(color = "black", alpha = 0.6) +
  geom_smooth(method = "lm",  se = FALSE, color = "red") +  # Linear trend line
  labs(x = "Perceived Stigma", y = "Willingness to Seek Therapy",
       title = "Relationship between Perceived Stigma and Willingness to Seek Therapy")

#checking assumptions
residuals <- resid(survey_glm_model)
qqnorm(residuals)


#RELIABILITY
# Rename columns for clarity 
colnames(my_survey)[1] <- "stigma_1"  
colnames(my_survey)[2] <- "access_1"
colnames(my_survey)[3] <- "responsibilities"
colnames(my_survey)[4] <- "involvement"

# Estimate McDonald's omega for selected columns
omega_est <- MBESS::ci.reliability(my_survey[, c("stigma_1", "access_1", "responsibilities", "involvement")], type = "omega")$est

# new data frame for ease of computation
survey_items <- my_survey[, c("stigma_1", "access_1", "responsibilities", "involvement")]


################## Creating Sum Scores ################## 

# Summing up the items to create total variables for perceived stigma, perceived access, responsibilities, involvement

my_survey$perceived_stigma_TOT_alt <- my_survey$stigma_1 + my_survey$access_1
my_survey$perceived_access_TOT_alt <- my_survey$access_1
my_survey$responsibilities_TOT_alt <- my_survey$responsibilities
my_survey$involvement_TOT_alt <- my_survey$involvement

# Running correlation between predictors (perceived stigma and outcome) 
cor.test(my_survey$perceived_stigma_TOT, my_survey$outcome)  # Correlation between perceived stigma total and outcome variable
cor.test(my_survey$perceived_access_TOT, my_survey$outcome)  # Correlation between perceived access total and outcome variable
cor.test(my_survey$responsibilities_TOT, my_survey$outcome)  # Correlation between responsibilities total and outcome variable
cor.test(my_survey$involvement_TOT, my_survey$outcome)  # Correlation between involvement total and outcome variable



