# weighted proportions
propfuncwt <- function(data, var, weight){
  probs <- data %>%
    dplyr::count({{var}}, wt = {{weight}}) %>% 
    mutate(pct = prop.table(n))
  return(probs)
}

# unweighted proportions
propfunc <- function(data, var){
  probs <- data %>%
    dplyr::count({{var}}) %>% 
    mutate(pct = prop.table(n))
  return(probs)
}
