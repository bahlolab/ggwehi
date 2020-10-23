
wehi_pal <- function(n) {
  stopifnot(rlang::is_scalar_integerish(n),
            n >= 0)

  if (n > length(wehi_extended)) {
    rlang::warn(stringr::str_c('The maximum number of colours for wehi_pal (',
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
    rlang::warn(stringr::str_c('The maximum number of colours for wehi_ordered_pal (',
                      length(wehi_ordered),
                      ') has been exceeded.'))
  }
  pal <- unname(wehi_ordered[seq_len(min(n, length(wehi_ordered)))])
  return(pal)
}

wehi_paired_pal <- function(n) {
  stopifnot(rlang::is_scalar_integerish(n),
            n >= 0)

  if (n > length(wehi_paired)) {
    rlang::warn(stringr::str_c('The maximum number of colours for wehi_paired (',
                               length(wehi_ordered),
                               ') has been exceeded.'))
  }
  pal <- unname(wehi_paired[seq_len(min(n, length(wehi_paired)))])
  return(pal)
}

#' @export
wehi_continous_a <- function(direction=1, n=5000) {
  stopifnot(rlang::is_scalar_integerish(direction))
  pal <- colorRampPalette(c(wehi_blue, wehi_green, wehi_yellow))(n)
  if (direction == -1) {
    pal <- rev(pal)
  }
  function(x) { ramp2(pal, x) }
}

#' @export
wehi_continous_b <- function(direction=1, n=5000) {
  stopifnot(rlang::is_scalar_integerish(direction))
  pal <- colorRampPalette(c(wehi_blue_dark, wehi_grey_mid,  wehi_yellow_light))(n)
  if (direction == -1) {
    pal <- rev(pal)
  }
  function(x) { ramp2(pal, x) }
}


ramp2 <- function(pal, x) {
  i <- 1L + as.integer(round(x * (length(pal) - 1)))
  pal[i]
}
