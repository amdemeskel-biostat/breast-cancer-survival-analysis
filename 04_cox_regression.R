#section 18. univariate cox models
cox_age <- coxph(
  surv_object ~ age_at_diagnosis,
  data = surv_data_complete
)

cox_tumor_size <- coxph(
  surv_object ~ tumor_size,
  data = surv_data_complete
)

cox_stage <- coxph(
  surv_object ~ tumor_stage,
  data = surv_data_complete
)

summary(cox_age)
summary(cox_tumor_size)
summary(cox_stage)


#section 19. multivariable Cox Model
cox_multi <- coxph(
  surv_object ~
    age_at_diagnosis +
    tumor_size +
    tumor_stage +
    er_status +
    her2_status +
    pr_status +
    neoplasm_histologic_grade,
  data = surv_data_complete
)

summary(cox_multi)
