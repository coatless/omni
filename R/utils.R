#' Perform Omni Product Call
#'
#' @param args Script values to pass in.
#' @param type Program to use for automation. Default `"omnigraffle"`
#' @param wait Delay applied to function call before opening the URL.
#'
#' @return
#' An opened session of OnmiGraffle or OmniOutliner with contents
#' posted from _R_.
#'
#' @details
#'
#' There are two ways to structure URLs for omnigraffle.
#'
#' 1. `"omnigraffle://localhost/omnijs-run?script=%s"`
#' 2. `"omnigraffle:///omnijs-run?script="`
#'
#' Note, by adding a third `/`, we are able to avoid typing `localhost`.
omnijs_run <- function(args,
                       type = c("omnigraffle", "omnioutliner"), wait = 0.10) {
  type = match.arg(type)
  Sys.sleep(wait)
  utils::browseURL(
    sprintf("%s:///omnijs-run?script=%s", type, utils::URLencode(args))
  )
}
