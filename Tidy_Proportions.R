propfunc <- function(data, var, weight){
  probs <- data %>%
    dplyr::count({{var}}, wt = {{weight}}) %>% 
    mutate(pct = prop.table(n))
  return(probs)
}
