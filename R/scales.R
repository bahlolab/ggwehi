
#' @export
scale_fill_wehi <- function (..., aesthetics = "fill") {
  ggplot2::discrete_scale(aesthetics, "wehi", wehi_pal, ...)
}

#' @export
scale_fill_wehi_ordered <- function (..., aesthetics = "fill") {
  ggplot2::discrete_scale(aesthetics, "wehi_ordered", wehi_ordered_pal, ...)
}

#' @export
scale_fill_wehi_continuous <- function (..., aesthetics = "fill", direction = 1,
                                        na.value = 'grey50', guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous", wehi_continous(direction),
                            na.value = na.value, guide = guide, ...)
}

#' @export
scale_fill_wehi_continuous2 <- function (..., aesthetics = "fill", direction = 1,
                                         na.value = 'grey50', guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous2", wehi_continous2(direction),
                            na.value = na.value, guide = guide, ...)
}

#' @export
scale_colour_wehi_continuous <- function (..., aesthetics = "colour", direction = 1,
                                          na.value = 'grey50', guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous", wehi_continous(direction),
                            na.value = na.value, guide = guide, ...)
}

#' @export
scale_colour_wehi_continuous2 <- function (..., aesthetics = "colour", direction = 1,
                                           na.value = 'grey50', guide = 'colourbar') {
  ggplot2::continuous_scale(aesthetics, "wehi_continuous2", wehi_continous2(direction),
                            na.value = na.value, guide = guide, ...)
}
