#section 20. PH Assumption
ph_test <- cox.zph(
  cox_multi
)

ph_test

plot(ph_test)


#section 22. model performance
summary(
  cox_multi
)$concordance
