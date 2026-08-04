# section 1. Load  pakejes
library(tidyverse)
library(janitor)
library(survival)
library(survminer)
library(ggplot2)
library(broom)

#section 2. Import Data Set
metabric <- Breast_Cancer_METABRIC
metabric_raw <- metabric
metabric_clean <- metabric

#section 3. Data cleaning
metabric_clean <- metabric_clean %>%
  clean_names()
metabric_clean <- metabric_clean %>%
  mutate(across(where(is.character), as.factor))

#section 4. Missing Data management
missing_summary <- data.frame(
  Variable = names(metabric_clean),
  Missing = colSums(is.na(metabric_clean)),
  Percent = round(
    colSums(is.na(metabric_clean)) /
      nrow(metabric_clean) * 100,
    2
  )
)

missing_summary <- missing_summary[
  order(-missing_summary$Percent),
]


#section 5. create event variable
metabric_clean <- metabric_clean %>%
  mutate(
    event = case_when(
      overall_survival_status == "Deceased" ~ 1,
      overall_survival_status == "Living" ~ 0,
      TRUE ~ NA_real_
    )
  )

#section 6. Build Analysis Data Set
surv_data <- metabric_clean %>%
  select(
    overall_survival_months,
    event,
    age_at_diagnosis,
    tumor_size,
    tumor_stage,
    er_status,
    her2_status,
    pr_status,
    neoplasm_histologic_grade
  )

#section 7. complete case Data set
surv_data_complete <- surv_data %>%
  na.omit()

#section 8. Descriptive Statistics
summary(
  surv_data_complete$overall_survival_months
)

table(surv_data_complete$event)

prop.table(
  table(surv_data_complete$event)
) * 100

#section 9. Create  Survival Object
surv_object <- Surv(
  time = surv_data_complete$overall_survival_months,
  event = surv_data_complete$event
)
