#'A function that will plot the number of ARID1A mutations per cancer type
#'
#'This will dd two numbers, x and y
#'
#'@param x - dataset to be used
#'@return plot of number of ARID1A mutations per tumor type
#'@examples
#'pplot(x)
#'@export
pplot <- function(x){
  ggplot(data=  mut_per_type <- ARID1A %>% 
           select(ttype) %>% 
           tbl_df() %>% 
           count(ttype), aes(x=ttype, y=n, colour=ttype)) +
  geom_point()
  }

#'
#'