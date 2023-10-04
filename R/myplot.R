#' Plotting function
#'
#' This function will plot ggplot2 package's graph
#'
#'
#' @param df dataframe
#' @param var variable
#' @export
#' @author Leean Jo
#' @examples
#' myplot(new_dataframe)
#'


myplot <- function(df, var) {
  ggplot2:: ggplot(df, aes(x=var)) +
    geom_bar() +
    coord_flip()

}

