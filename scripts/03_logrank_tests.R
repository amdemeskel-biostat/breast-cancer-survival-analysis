er_logrank <- survdiff(
  surv_object ~ er_status,
  data = surv_data_complete
)

cox_er <- coxph(
  surv_object ~ er_status,
  data = surv_data_complete
)
summary(cox_er)

survdiff(
  surv_object ~ her2_status,
  data = surv_data_complete
)

cox_her2 <- coxph(
  surv_object ~ her2_status,
  data = surv_data_complete
)

summary(cox_her2)

survdiff(
  surv_object ~ tumor_stage,
  data = surv_data_complete
)

















