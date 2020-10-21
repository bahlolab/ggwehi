
<!-- README.md is generated from README.Rmd. Please edit that file -->

## `ggwehi`: Colour scales for `ggplot2` based on the WEHI colour palette

### Examples

``` r
library(tidyverse)
library(ggwehi)
set.seed(1)
diamonds %>% 
  sample_n(5000) %>% 
  ggplot(aes(x = cut, y = price, col = carat)) +
  geom_jitter(height = 0) + 
  geom_boxplot(fill = NA, outlier.colour = NA) +
  scale_colour_wehi_continuous() +
  ggtitle('Diamonds cut, carat and price')
```

<img src="README_figs/README-unnamed-chunk-2-1.png" width="672" />

``` r
diamonds %>% 
  ggplot(aes(x = cut, fill = clarity)) +
  geom_bar() +
  scale_fill_wehi() +
  ggtitle('Diamonds clarity by cut')
```

<img src="README_figs/README-unnamed-chunk-2-2.png" width="672" />

### Scale functions

  - `scale_fill_wehi`
  - `scale_colour_wehi`
  - `scale_fill_wehi_ordered`
  - `scale_colour_wehi_ordered`
  - `scale_fill_wehi_continuous`
  - `scale_fill_wehi_continuous_c`
  - `scale_colour_wehi_continuous`
  - `scale_color_wehi_continuous_c`

### Palettes

``` r
scales::show_col(ggwehi::wehi_primary)
```

<img src="README_figs/README-unnamed-chunk-3-1.png" width="672" />

``` r
scales::show_col(ggwehi::wehi_secondary)
```

<img src="README_figs/README-unnamed-chunk-3-2.png" width="672" />

``` r
scales::show_col(ggwehi::wehi_extended)
```

<img src="README_figs/README-unnamed-chunk-3-3.png" width="672" />

``` r
scales::show_col(ggwehi::wehi_ordered)
```

<img src="README_figs/README-unnamed-chunk-3-4.png" width="672" />

``` r
scales::show_col(ggwehi:::wehi_continous()(seq(0,1,1/9)))
```

<img src="README_figs/README-unnamed-chunk-3-5.png" width="672" />

``` r
scales::show_col(ggwehi:::wehi_continous_c()(seq(0,1,1/9)))
```

<img src="README_figs/README-unnamed-chunk-3-6.png" width="672" />
