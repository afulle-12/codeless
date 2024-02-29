logistic_regression.linearity <- function(model, model_data) {
  if (!require(tidyverse)) {
    
    stop("tidyverse not installed.")
    
  } else {
    p <- predict(model, type = 'response')
    i <- colnames(model_data)
    
    temp_data <- model_data %>%
      select_if(is.numeric) %>%
      mutate(logit = log(p/(1-p))) %>%
      gather(key = "predictors", value = "predictor.value", -logit)
    
    ggplot(temp_data, aes(predictor.value, logit)) +
      geom_point(size = 0.5, alpha = 0.5) +
      geom_smooth(method = "loess") + 
      facet_wrap(~predictors, scales = "free")
  }
}
