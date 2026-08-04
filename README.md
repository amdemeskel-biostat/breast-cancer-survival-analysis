# Breast Cancer Survival Analysis Using the METABRIC Dataset

## Overview

This project demonstrates a complete survival analysis workflow using the METABRIC breast cancer dataset.

The analysis investigates prognostic factors associated with overall survival using Kaplan–Meier estimation, log-rank testing, Cox proportional hazards regression, and model diagnostics.

## Dataset

* Original sample size: 2,509 patients
* Complete-case sample: 1,406 patients
* Death events: 785
* Maximum follow-up: 351 months

## Statistical Methods

### Data Preparation

* Variable selection
* Missing data assessment
* Complete-case analysis

### Survival Analysis

* Kaplan–Meier estimation
* Median survival estimation
* Survival probability estimation

### Group Comparisons

* Estrogen receptor (ER) status
* HER2 receptor status
* Tumor stage

### Regression Modeling

* Univariate Cox regression
* Multivariable Cox proportional hazards regression

### Model Diagnostics

* Schoenfeld residual tests
* Proportional hazards assessment
* Forest plot visualization

## Main Findings

* Median overall survival: 163.2 months
* ER-positive tumors showed better survival
* HER2-positive tumors were associated with increased mortality risk
* Age, tumor size, HER2 status, and histologic grade remained significant predictors after adjustment
* Evidence of non-proportional hazards was observed

## Software

* R
* survival
* survminer
* tidyverse
* broom
* gtsummary
* ggplot2

## Repository Structure

scripts/ → Analysis scripts

figures/ → Kaplan–Meier and Forest Plot figures

report/ → Final portfolio report

## Author

Amdemeskel Mulugeta Bekele

MPH Biostatistics Candidate

Bahir Dar University
