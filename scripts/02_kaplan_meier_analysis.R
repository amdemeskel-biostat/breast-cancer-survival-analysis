#section 10.overall Kaplan-meir analysis 
km_fit <- survfit(
  surv_object ~ 1,
  data = surv_data_complete
)

summary(km_fit)

surv_median(km_fit)

summary(
  km_fit,
  times = c(12, 36, 60, 120, 180)
)
