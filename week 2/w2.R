study_data <- data.frame(
  subject_id = 101:105,
  treatment = factor(c("Control", "Placebo", "Drug_A", "Drug_A", "Control")),
  bmi = c(22.4, 28.1, 24.5, 31.0, 19.8),
  response_ms = c(340, 410, 290, 315, 360),
  survived = c(TRUE, TRUE, TRUE, FALSE, TRUE)
)

str(study_data)
head(study_data, n = 3)

mean_bmi <- mean(study_data$bmi)
sd_bmi <- sd(study_data$bmi)
quantile_response <- quantile(study_data$response_ms, probs = c(0.25, 0.50, 0.75))

cat("Mean BMI:", round(mean_bmi, 2), " (SD:", round(sd_bmi, 2), ")\n")
print(quantile_response)
