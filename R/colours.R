
#' @importFrom magrittr "%>%"

#' @export
wehi_yellow <- '#ECE953'
#' @export
wehi_green <- '#49A942'
#' @export
wehi_blue <- '#2372B9'
#' @export
wehi_grey <- '#58595B'
#' @export
wehi_orange <- '#F37520'
#' @export
wehi_red <- '#E01545'
#' @export
wehi_purple <- '#7D489C'
#' @export
wehi_light_blue <- '#00BCE7'
#' @export
wehi_teal <- '#00A99F'

wehi_yellow_lighter <- colorspace::lighten(wehi_yellow, amount = 0.25) %>% shades::saturation(values = 1)
wehi_blue_darker <- colorspace::darken(wehi_blue, amount = 0.50)

#' @export
wehi_primary <-
  c(wehi_yellow = wehi_yellow,
    wehi_green = wehi_green,
    wehi_blue = wehi_blue,
    wehi_grey = wehi_grey)

#' @export
wehi_secondary <-
  c(wehi_orange = wehi_orange,
    wehi_red = wehi_red,
    wehi_purple = wehi_purple,
    wehi_light_blue = wehi_light_blue,
    wehi_teal = wehi_teal)

#' @export
wehi_extended <-
  c(wehi_yellow = wehi_yellow,
    wehi_blue = wehi_blue,
    wehi_green = wehi_green,
    wehi_orange = wehi_orange,
    wehi_red = wehi_red,
    wehi_purple = wehi_purple,
    wehi_light_blue = wehi_light_blue,
    wehi_teal = wehi_teal)

#' @export
wehi_extended_dark <-
  wehi_extended %>%
  shades::saturation(values = 1) %>%
  colorspace::darken(amount = 0.20)

#' @export
wehi_extended_light <-
  wehi_extended %>%
  shades::saturation(values = 1) %>%
  colorspace::lighten(amount = 0.35)

#' @export
wehi_paired <- c(rbind(wehi_extended_dark, wehi_extended_light))
