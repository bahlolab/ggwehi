
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
