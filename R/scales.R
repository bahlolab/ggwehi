
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
scale_fill_wehi_ordered <- function (..., aesthetics = "fill", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi_ordered", wehi_ordered_pal, na.value = na.value, ...)
}

#' @export
scale_colour_wehi_ordered <- function (..., aesthetics = "colour", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi_ordered", wehi_ordered_pal, na.value = na.value, ...)
}

#' @export
scale_color_wehi_ordered <- function (..., aesthetics = "colour", na.value = wehi_grey) {
  ggplot2::discrete_scale(aesthetics, "wehi_ordered", wehi_ordered_pal, na.value = na.value, ...)
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
                                          na.value = wehi_grey, guide = 'colourbar',
                                          option = 'A') {
  if (!(rlang::is_scalar_character(option) && option %in% c('A', 'B'))) {
    rlang::warn('"option" must be one of c("A", "B")')
    option <- 'A'
  }
  if (option == 'A') {
    ggplot2::continuous_scale(aesthetics, "wehi_continuous_a", wehi_continous_a(direction),
                              na.value = na.value, guide = guide, ...)
  } else {
    ggplot2::continuous_scale(aesthetics, "wehi_continuous_b", wehi_continous_b(direction),
                              na.value = na.value, guide = guide, ...)
  }
}

#' @export
scale_color_wehi_continuous <- function (..., aesthetics = "colour", direction = 1,
                                         na.value = wehi_grey, guide = 'colourbar',
                                         option = 'A') {
  if (!(rlang::is_scalar_character(option) && !option %in% c('A', 'B'))) {
    rlang::warn('"option" must be one of c("A", "B")')
    option <- 'A'
  }
  if (option == 'A') {
    ggplot2::continuous_scale(aesthetics, "wehi_continuous_a", wehi_continous_a(direction),
                              na.value = na.value, guide = guide, ...)
  } else {
    ggplot2::continuous_scale(aesthetics, "wehi_continuous_b", wehi_continous_b(direction),
                              na.value = na.value, guide = guide, ...)
  }
}
