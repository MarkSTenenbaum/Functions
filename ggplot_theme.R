
library(showtext)
library(ggthemes)
library(ggsci)

# Plot theme
theme_gg <- function(base_size = 14, base_family = "font", legend = FALSE){
  font_add_google('Alegreya Sans', "font")
  showtext_auto()
  showtext_opts(dpi = 300)
  
  if(legend == TRUE){
    theme_minimal() +
      theme(legend.position = "bottom") +
      theme(legend.title = element_blank()) +
      theme(text=element_text(size=14, family="font"))
  }
  else{
    theme_minimal() +
      theme(legend.position = "none") +
      theme(legend.title = element_blank()) +
      theme(text=element_text(size=14, family="font"))
  }
}

