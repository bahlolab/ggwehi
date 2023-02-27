
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

wehi_paired_pal <- function(n) {
  stopifnot(rlang::is_scalar_integerish(n),
            n >= 0)

  if (n > length(wehi_paired)) {
    rlang::warn(stringr::str_c('The maximum number of colours for wehi_paired (',
                               length(wehi_paired),
                               ') has been exceeded.'))
  }
  pal <- unname(wehi_paired[seq_len(min(n, length(wehi_paired)))])
  return(pal)
}

#' @export
wehi_continous <- function(direction=1, n=5000) {
  stopifnot(rlang::is_scalar_integerish(direction))
  pal <- colorRampPalette(c(wehi_blue_darker, wehi_green ,wehi_yellow_lighter))(n)
  if (direction == -1) {
    pal <- rev(pal)
  }
  function(x) { ramp2(pal, x) }
}

ramp2 <- function(pal, x) {
  i <- 1L + as.integer(round(x * (length(pal) - 1)))
  pal[i]
}

