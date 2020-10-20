
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

wehi_cividis_pal <- function(n) {
  stopifnot(rlang::is_scalar_integerish(n) && n > 0)
  colorRampPalette(c(wehi_blue, wehi_grey, wehi_yellow))(n)
}

scale_fill_wehi <- function (..., type = "seq", aesthetics = "fill") {
  ggplot2::discrete_scale(aesthetics, "wehi", wehi_pal, ...)
}

scale_fill_wehi_ordered <- function (..., type = "seq", aesthetics = "fill") {
  ggplot2::discrete_scale(aesthetics, "wehi_ordered", wehi_ordered_pal, ...)
}

