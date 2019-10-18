VI Reading in Functions
================

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.0.0     v purrr   0.2.5
    ## v tibble  1.4.2     v dplyr   0.7.6
    ## v tidyr   0.8.1     v stringr 1.3.1
    ## v readr   1.1.1     v forcats 0.3.0

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(ggplot2)
library(knitr)
```

``` r
#functions for reading in csv files from the PAM fluormeter
make_table <- function(file_path){
  read_csv2(file_path) %>% 
    mutate(Date = as.Date(as.character(Date), format = "%d%m%y")) %>%
  mutate_if(is.character, as.numeric)
}

#selecting for a specific variable to examine, NPQ for example
my_variable <- function(my_table, my_variable){
  my_table %>% select(c(1:4), starts_with(my_variable))
}
```
