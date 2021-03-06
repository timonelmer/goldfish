#' @importFrom utils packageVersion packageDescription
.onLoad <- function(libname, pkgname) {
  packageStartupMessage("  <\")))><  The Goldfish package in R\n")
  packageStartupMessage(
    pkgname, ": version ", utils::packageVersion("goldfish"),
    ", \"Bristol Shubunkins\", created on ",
    utils::packageDescription("goldfish", fields = "Date"),
    "\n"
  )
  # packageStartupMessage("Please cite as:\nChristoph Stadtfeld and James Hollway (2018). \"goldfish:
  #   Statistical network models for dynamic network data\". R package version ", packageVersion("goldfish"),
  #   ", www.social-networks.ethz.ch/research/goldfish.html.\n")
}

# Whenever you use C++ code in your package, you need to clean up after yourself when your package is unloaded.
# Do this by writing a .onUnload() function that unloads the DLL: (http://r-pkgs.had.co.nz/src.html)
.onUnload <- function(libpath) {
  library.dynam.unload("mypackage", libpath)
}
