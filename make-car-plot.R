library(tidyverse)
library(ggthemes)

car_plot <- mtcars |> 
  select(mpg, wt) |> 
  ggplot(mapping = aes(x = wt, y = mpg))+ 
  geom_point()+ 
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE)+ 
  theme_clean()+ 
  labs(title = "Title", subtitle = "Subtitle", x = "x axis", y = "y axis", caption = "mtcars")

write_rds(car_plot, "car-plot.rds")

