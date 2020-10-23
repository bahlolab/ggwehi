
#' @importFrom magrittr "%>%"

#' @export
wehi_yellow <- '#ECE953'
# yellow w/ sat 90% lightness 64%
wehi_yellow_light <- '#f6f351'
#' @export
wehi_green <- '#49A942'
#' @export
wehi_blue <- '#2372B9'
# blue w/ sat 100% lightness 20%
wehi_blue_dark <- '#003566'
#' @export
wehi_grey <- '#58595B'
# grey w/ lightness 45%
wehi_grey_mid <- '#707275'
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

#' @export
wehi_ordered <-
  c(wehi_red = wehi_red,
    wehi_orange = wehi_orange,
    wehi_yellow = wehi_yellow,
    wehi_green = wehi_green,
    wehi_teal = wehi_teal,
    wehi_blue = wehi_blue,
    wehi_purple = wehi_purple)

