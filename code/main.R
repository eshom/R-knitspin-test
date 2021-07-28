#' # Linear Regression
#' ## Get Data
#' We first copy the built-in `mtcars` dataset and subset it
#+ result = "asis"
df <- mtcars |> subset(cyl == 4, select = c("mpg", "wt", "qsec"))
knitr::kable(df)
#' ## Analysis
#' We then use `lm()` to perform the linear regression analysis.
#' The dot (`.`) symbol in the formula argument is used here to select all
#' columns as the independent variables. In this case it's just `wt` and `qsec`.
model <- lm(mpg ~ ., df)
summary(model)
#' It is important to check if the regression model is valid.
#' We will compare the model residuals to a theoretical normal distribution
qqnorm(residuals(model))
qqline(residuals(model))
