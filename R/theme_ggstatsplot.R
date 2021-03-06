#'
#' @title Default theme used in all `ggstatsplot` package plots
#' @name theme_mprl
#' @author Indrajeet Patil
#' @description Common theme used across all plots generated in `ggstatsplot`
#'   and *assumed* by the author to be aesthetically pleasing to the
#'   user/reader.
#'
#' @param ggtheme A function, `ggplot2` theme name. Default value is
#'   `ggplot2::theme_bw()`. Allowed values are the official `ggplot2` themes,
#'   including `theme_bw()`, `theme_minimal()`, `theme_classic()`,
#'   `theme_void()`, etc.
#'
#' @return A `ggplot2` object with the `theme_mprl` theme.
#'
#' @import ggplot2
#' @importFrom grid unit
#'
#' @note This is just another name for the function `theme_ggstatsplot()`.
#'
#' @references
#' \url{https://indrajeetpatil.github.io/ggstatsplot/articles/theme_ggstatsplot.html}
#'
#' @export
#'

theme_mprl <- function(ggtheme = ggplot2::theme_bw()) {
  ggtheme +
    ggplot2::theme(
      axis.title.x = ggplot2::element_text(size = 12, face = "bold"),
      strip.text.x = ggplot2::element_text(size = 12, face = "bold"),
      strip.text.y = ggplot2::element_text(size = 12, face = "bold"),
      strip.text = ggplot2::element_text(size = 12, face = "bold"),
      axis.title.y = ggplot2::element_text(size = 12, face = "bold"),
      axis.text.x = ggplot2::element_text(size = 12, face = "bold"),
      axis.text.y = ggplot2::element_text(size = 12, face = "bold"),
      axis.line = ggplot2::element_line(),
      legend.text = ggplot2::element_text(size = 12),
      legend.title = ggplot2::element_text(size = 12, face = "bold"),
      legend.title.align = 0.5,
      legend.text.align = 0.5,
      legend.key.height = grid::unit(x = 1, units = "line"),
      legend.key.width = grid::unit(x = 1, units = "line"),
      plot.margin = grid::unit(x = c(1, 1, 1, 1), units = "lines"),
      panel.border = ggplot2::element_rect(
        color = "black",
        fill = NA,
        size = 1
      ),
      plot.title = ggplot2::element_text(
        color = "black",
        size = 13,
        face = "bold",
        hjust = 0.5
      ),
      plot.subtitle = ggplot2::element_text(
        color = "black",
        size = 11,
        face = "bold",
        hjust = 0.5
      )
    )
}

#'
#' @title Default theme used in all `ggstatsplot` package plots
#' @name theme_ggstatsplot
#' @author Indrajeet Patil
#' @description Common theme used across all plots generated in `ggstatsplot`
#'   and *assumed* by the author to be aesthetically pleasing to the
#'   user/reader.
#'
#' @inheritParams theme_mprl
#' @note This is just another name for the function `theme_mprl()`.
#'
#' @references
#' \url{https://indrajeetpatil.github.io/ggstatsplot/articles/theme_ggstatsplot.html}
#'
#' @export
#'

# theme_ggstatsplot <- function(ggtheme = ggplot2::theme_bw()) {
#   theme_mprl(ggtheme = ggtheme)
# }

theme_ggstatsplot <- theme_mprl
