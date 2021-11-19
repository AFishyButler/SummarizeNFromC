#' @title Calculate the mean of a numeric object dependent on a character object
#'
#' @description This function calculates the mean of a numerical object "N", as grouped by character object "C"
#'
#' @param N Is a numerical object; named this way as it must be numerical
#' @param C Is a character object; named this way as it must be a character
#' @param df Denotes the dataframe used
#' @return A tibble with basic statistic summaries
#' @examples
#' (summarize_N_from_C (vancouver_trees, cultivar_name , diameter ))
#' (summarize_N_from_C("dataframe","a categorical object", "a numerical object" ))
#' @export
summarize_N_from_C <- function(df, C, N){
  summary <- dplyr::summarise(df,
                              is_numeric_N= is.numeric({{ N }}),
                              class_N= class({{ N }}),
                              is_character_C= is.character({{ C }}),
                              class_C= class({{ C }}))
  if(!summary$is_numeric_N ){
    stop(" Sorry, 'N' must be numeric, but is currently ", summary$class_N)
  }
  if(!summary$is_character_C ){
    stop(" Sorry, 'C' must be of character class, but is currently ", summary$class_C)
  }
  df %>%
    group_by ({{ C }}) %>%
    summarise( mean= mean({{ N }}, na.rm=TRUE),
               range = range({{ N }}, na.rm=TRUE),
               sd= sd({{ N }}, na.rm=TRUE))}

