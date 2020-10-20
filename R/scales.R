
wehi_pal <- function(n) {
  stopifnot(rlang::is_scalar_integerish(n),
            n >= 0)

  if (n > length(wehi_extended)) {
    rlang::warn(str_c('The maximum number of colours for wehi_pal (',
                      length(wehi_extended),
                      ') has been exceeded.'))
  }
  pal <- unname(wehi_extended[seq_len(min(n, length(wehi_extended)))])
  return(pal)
}

wehi_ordered_pal <- function(n) {
  stopifnot(rlang::is_scalar_integerish(n),
            n >= 0)

  if (n > length(wehi_ordered)) {
    rlang::warn(str_c('The maximum number of colours for wehi_ordered_pal (',
                      length(wehi_ordered),
                      ') has been exceeded.'))
  }
  pal <- unname(wehi_ordered[seq_len(min(n, length(wehi_ordered)))])
  return(pal)
}

wehi_continous <- function(direction, n=1000) {
  stopifnot(rlang::is_scalar_integerish(direction))
  if (direction == -1) {
    pal <- colorRampPalette(c(wehi_yellow, wehi_grey, wehi_blue))(n)
  } else {
    pal <- colorRampPalette(c(wehi_blue, wehi_grey, wehi_yellow))(n)

  }
  function(x) { ramp2(pal, x) }
}

wehi_continous2 <- function(direction, n=1000) {
  stopifnot(rlang::is_scalar_integerish(direction))
  if (direction == -1) {
    pal <- colorRampPalette(c(wehi_yellow, wehi_green, wehi_blue))(n)
  } else {
    pal <- colorRampPalette(c(wehi_blue, wehi_green, wehi_yellow))(n)
  }
  function(x) { ramp2(pal, x) }
}


ramp2 <- function(pal, x) {
  i <-  as.integer(round(x * length(pal)))
  pal[i]
}

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


