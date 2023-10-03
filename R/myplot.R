#' Plotting function
#'
#' This function will plot ggplot2 package's graph
#'
#'
#' @param data dataframe
#' @export
#' @author Leean Jo
#' @examples
#' myplot(new_dataframe)
#'


myplot <- function(data) {
  ggplot2::ggplot(data, aes(x= data)) + geom_bar()

}


