
#' @export
scale_fill_wehi <- function (..., aesthetics = "fill", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi", wehi_pal, na.value = na.value, ...)
}

#' @export
scale_colour_wehi <- function (..., aesthetics = "colour", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi", wehi_pal, na.value = na.value, ...)
}

#' @export
scale_color_wehi <- function (..., aesthetics = "colour", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi", wehi_pal, na.value = na.value, ...)
}

#' @export
scale_fill_wehi_paired <- function (..., aesthetics = "fill", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi_paired", wehi_paired_pal, na.value = na.value, ...)
}

#' @export
scale_colour_wehi_paired  <- function (..., aesthetics = "colour", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi_paired", wehi_paired_pal, na.value = na.value, ...)
}

#' @export
scale_color_wehi_paired  <- function (..., aesthetics = "colour", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi_paired", wehi_paired_pal, na.value = na.value, ...)
}


#' @export
scale_fill_wehi_continuous <- function (..., aesthetics = "fill", direction = 1,
                                        na.value = wehi_grey, guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous", wehi_continous(direction),
                            na.value = na.value, guide = guide, ...)
}

#' @export
scale_colour_wehi_continuous <- function (..., aesthetics = "colour", direction = 1,
                                          na.value = wehi_grey, guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous", wehi_continous(direction),
                            na.value = na.value, guide = guide, ...)
}

#' @export
scale_color_wehi_continuous <- function (..., aesthetics = "colour", direction = 1,
                                         na.value = wehi_grey, guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous", wehi_continous(direction),
                            na.value = na.value, guide = guide, ...)
}

