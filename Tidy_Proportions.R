# weighted proportions
propfuncwt <- function(data, var, weight, group){
  if(missing(group)){
    probs2 <- data %>%
      dplyr::count({{var}}, wt = {{weight}}) %>% 
      mutate(pct = prop.table(n))
    return(probs2)
  }
  else{
    probs <- data %>%
      group_by({{ group }}) %>%
      dplyr::count({{var}}, wt = {{weight}}) %>% 
      mutate(pct = prop.table(n))
    return(probs) 
  }
}

# unweighted proportions
propfunc <- function(data, var, group){
  if(missing(group)){
    probs2 <- data %>%
      dplyr::count({{var}}) %>% 
      mutate(pct = prop.table(n))
    return(probs2)
  }
  else{
    probs <- data %>%
      group_by({{ group }}) %>%
      dplyr::count({{var}}) %>% 
      mutate(pct = prop.table(n))
    return(probs) 
  }
}
