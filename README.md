
<!-- README.md is generated from README.Rmd. Please edit that file -->

## `ggwehi`: Colour scales for `ggplot2` based on the WEHI colour palette

### Installation

``` r
devtools::install_github("jemunro/ggwehi")
```

### Examples

``` r
library(tidyverse)
library(ggwehi)

diamonds %>% 
  ggplot(aes(x = cut, fill = clarity)) +
  geom_bar() +
  scale_fill_wehi() +
  ggtitle('scale_fill_wehi()')
```

<img src="README_figs/README-examples-1.png" width="672" />

``` r
set.seed(1)
tibble(state = c(rbind(str_c(1:5, 'A'), str_c(1:5, 'B'))),
       class = str_extract(state, '^.'),
       condition = str_extract(state, '.$'),
       value = abs(rnorm(length(class)))) %>% 
  ggplot(aes(class, value, fill = state)) +
  geom_col() +
  scale_fill_wehi_paired() +
  ggtitle('scale_fill_wehi_paired()')
```

<img src="README_figs/README-examples-2.png" width="672" />

``` r
set.seed(2)
diamonds %>% 
  sample_n(5000) %>%
  ggplot(aes(x = cut, y = carat, col = price)) +
  geom_jitter(height = 0, width = 0.35) + 
  geom_boxplot(fill = NA, outlier.colour = NA, col = 'black') +
  scale_colour_wehi_continuous() +
  ggtitle('scale_colour_wehi_continuous()')
```

<img src="README_figs/README-examples-3.png" width="672" />

### Scale functions

  - `scale_fill_wehi()`/`scale_colour_wehi()`
      - Supports up to 8 different colours
      - Note: `na.value` is set to `ggwehi::wehi_grey` (grey from
        wehi\_primary)
  - `scale_fill_wehi_paired()`/`scale_colour_wehi_paired()`
      - Supports up to 8 pairs, with 16 different colours
      - Note: This will only work if the aesthetic is such that when
        alphabetically sorted the pairs are adjacent to one another, and
        all pairs are complete. For a more general solution use
        `scale_fill_manual(values = x)` where x is a named vector of
        values from ggwehi::wehi\_paired.
  - `scale_fill_wehi_continuous()`/`scale_colour_wehi_continuous()`

### Palettes

``` r
scales::show_col(wehi_primary)
```

<img src="README_figs/README-palettes-1.png" width="672" />

``` r
scales::show_col(wehi_secondary)
```

<img src="README_figs/README-palettes-2.png" width="672" />

``` r
scales::show_col(wehi_extended)
```

<img src="README_figs/README-palettes-3.png" width="672" />

``` r
scales::show_col(wehi_paired)
```

<img src="README_figs/README-palettes-4.png" width="672" />

``` r
scales::show_col(wehi_continous()(seq(0,1,1/15)))
```

<img src="README_figs/README-palettes-5.png" width="672" />
