Factors Influencing Willingness to Seek Therapy

Statistical Modeling and Reliability Analysis

Author: Donasyl Marie Aho
Course Context: SURV400
Tools: R, ggplot2, jtools, MBESS
Methods: Generalized Linear Modeling, Correlation Analysis, Reliability Analysis

Project Overview

This project examines how psychosocial factors influence individuals’ willingness to seek therapy. Using survey data, I applied statistical modeling and reliability analysis to assess whether perceived stigma, perceived access to care, responsibilities, and involvement are significant predictors of help-seeking behavior.

The analysis combines regression modeling, correlation testing, visualization, and scale reliability estimation to provide a comprehensive evaluation of the factors associated with mental health service utilization.

Research Question

Which factors significantly predict willingness to seek therapy, and how reliable are the survey constructs used to measure them?

Dataset Description

Source: Course-administered survey

Sample Size: 38 respondents

Key Variables:

perceived_stigma

perceived_access_1

Responsibilities

involvement_scale_1

outcome (willingness to seek therapy)

sex

Survey responses were measured on ordinal and Likert-style scales.

Data Preparation

Imported data using read.csv()

Inspected distributions and summary statistics

Renamed variables for clarity and consistency

Created summed scale scores for exploratory analysis

Statistical Methods
Generalized Linear Model (GLM)

A Gaussian family GLM was used to model willingness to seek therapy as a function of:

Perceived stigma

Perceived access to care

Responsibilities

Level of involvement

This approach allowed for simultaneous evaluation of multiple predictors while controlling for shared variance.

Key Model Results

Perceived stigma emerged as a strong and statistically significant negative predictor of willingness to seek therapy (p < .001)

Perceived access, responsibilities, and involvement were not statistically significant predictors in the multivariate model

The model substantially reduced deviance compared to the null model, indicating improved explanatory power

These findings suggest stigma plays a dominant role in help-seeking behavior within this sample.

Visualization

A scatterplot with a fitted linear regression line was created to visualize the relationship between perceived stigma and willingness to seek therapy. The plot illustrates a clear negative trend, reinforcing the regression results.

Model Diagnostics

Deviance residuals were examined

A Q-Q plot of residuals was generated to assess normality

Assumptions were generally reasonable given the sample size and outcome scale

Reliability Analysis

To assess internal consistency of the survey items, McDonald’s omega was estimated using the MBESS package.

Reliability estimation revealed warnings related to negative variance estimates

These warnings likely reflect small sample size and heterogeneous constructs

Results highlight the importance of cautious interpretation and scale refinement

Correlation Analysis

Pearson correlations were computed between each predictor and willingness to seek therapy.

All correlations were weak and non-significant

This contrasts with the regression results and suggests overlapping variance among predictors

The findings reinforce the value of multivariate modeling over bivariate analysis alone

Key Insights

Perceived stigma is the strongest barrier to seeking therapy

Other factors may influence help-seeking indirectly or in interaction with stigma

Regression modeling provided clearer insight than simple correlations

Scale reliability should be improved in future survey designs

Limitations

Small sample size limits statistical power

Self-reported survey data may introduce response bias

Some constructs were measured with single items

Reliability estimates were affected by scale structure and sample size

Conclusion

This analysis demonstrates that perceived stigma plays a critical role in shaping willingness to seek therapy. While access, responsibilities, and involvement are often discussed as barriers, stigma appears to outweigh these factors when examined simultaneously.

The project highlights the importance of combining regression modeling, visualization, and reliability analysis to fully understand survey-based mental health data.
