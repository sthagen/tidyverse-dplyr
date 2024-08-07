#' Storm tracks data
#'
#' This dataset is the NOAA Atlantic hurricane database best track data,
#' <https://www.nhc.noaa.gov/data/#hurdat>. The data includes the positions and
#' attributes of storms from `r min(storms$year)`-`r max(storms$year)`. Storms
#' from 1979 onward are measured every six hours during the lifetime of the
#' storm. Storms in earlier years have some missing data.
#'
#' @seealso The script to create the storms data set:
#'   <https://github.com/tidyverse/dplyr/blob/main/data-raw/storms.R>
#'
#' @format A tibble with `r format(nrow(storms), big.mark = ",")` observations
#'   and `r df_n_col(storms)` variables:
#' \describe{
#' \item{name}{Storm Name}
#' \item{year,month,day}{Date of report}
#' \item{hour}{Hour of report (in UTC)}
#' \item{lat,long}{Location of storm center}
#' \item{status}{Storm classification (Tropical Depression, Tropical Storm,
#'   or Hurricane)}
#' \item{category}{Saffir-Simpson hurricane category calculated from wind speed.
#'   \itemize{
#'     \item `NA`: Not a hurricane
#'     \item 1: 64+ knots
#'     \item 2: 83+ knots
#'     \item 3: 96+ knots
#'     \item 4: 113+ knots
#'     \item 5: 137+ knots
#'   }
#' }
#' \item{wind}{storm's maximum sustained wind speed (in knots)}
#' \item{pressure}{Air pressure at the storm's center (in millibars)}
#' \item{tropicalstorm_force_diameter}{Diameter (in nautical miles) of the
#'   area experiencing tropical storm strength winds (34 knots or above).
#'   Only available starting in 2004.}
#' \item{hurricane_force_diameter}{Diameter (in nautical miles) of the area
#'   experiencing hurricane strength winds (64 knots or above). Only available
#'   starting in 2004.}
#' }
#' @examples
#' storms
#'
#' # Show a few recent storm paths
#' if (requireNamespace("ggplot2", quietly = TRUE)) {
#'   library(ggplot2)
#'   storms %>%
#'     filter(year >= 2000) %>%
#'     ggplot(aes(long, lat, color = paste(year, name))) +
#'     geom_path(show.legend = FALSE) +
#'     facet_wrap(~year)
#' }
#'
#' storms
"storms"
