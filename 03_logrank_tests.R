km_er <- survfit(
  surv_object ~ er_status,
  data = surv_data_complete
)

er_logrank <- survdiff(
  surv_object ~ er_status,
  data = surv_data_complete
)

cox_er <- coxph(
  surv_object ~ er_status,
  data = surv_data_complete
)

summary(cox_er)

#section 14. HER2 Analysis
km_her2 <- survfit(
  surv_object ~ her2_status,
  data = surv_data_complete
)

survdiff(
  surv_object ~ her2_status,
  data = surv_data_complete
)

cox_her2 <- coxph(
  surv_object ~ her2_status,
  data = surv_data_complete
)

summary(cox_her2)

surv_data_complete$tumor_stage <- factor(
  surv_data_complete$tumor_stage,
  levels = c(1,2,3,4),
  labels = c(
    "Stage I",
    "Stage II",
    "Stage III",
    "Stage IV"
  )
)

km_stage <- survfit(
  surv_object ~ tumor_stage,
  data = surv_data_complete
)

survdiff(
  surv_object ~ tumor_stage,
  data = surv_data_complete
)



