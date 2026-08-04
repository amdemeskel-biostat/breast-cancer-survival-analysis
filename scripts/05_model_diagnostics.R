#section 20. PH Assumption
ph_test <- cox.zph(
  cox_multi
)

ph_test

plot(ph_test)


#section 21. forest plot
forest_data <- data.frame(
  Variable = c(
    "Age at Diagnosis",
    "Tumor Size",
    "ER Positive",
    "HER2 Positive",
    "Histologic Grade"
  ),
  HR = c(
    1.036,
    1.011,
    0.805,
    1.519,
    1.149
  ),
  Lower = c(
    1.030,
    1.007,
    0.655,
    1.225,
    1.015
  ),
  Upper = c(
    1.043,
    1.016,
    0.991,
    1.882,
    1.301
  )
)

forest_plot <- ggplot(
  forest_data,
  aes(
    x = HR,
    y = reorder(Variable, HR)
  )
) +
  geom_point(size = 3) +
  geom_errorbarh(
    aes(
      xmin = Lower,
      xmax = Upper
    ),
    height = 0.2
  ) +
  geom_vline(
    xintercept = 1,
    linetype = "dashed"
  ) +
  theme_bw()

ggsave(
  "Figure5_Forest_Plot.png",
  forest_plot,
  width = 10,
  height = 6,
  dpi = 300
)

#section 22. model performance
summary(
  cox_multi
)$concordance
