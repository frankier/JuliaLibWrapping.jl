# Public façade for the rmutates R package.
#
# JuliaLibWrapping creates this file once and never rewrites it, so
# edits here survive a rebuild. R/lowlevel.R is regenerated on every
# build.

# Scale `x` in place and return it.
scale <- function(x, factor = 2.0, label, .in_place = FALSE) {
  if (.in_place && typeof(x) != "double") stop(".in_place = TRUE requires x to have double storage", call. = FALSE)
  if (!.in_place) {
    x <- .jlr_copy_buffer(x)
  }
  .jlr_mutated_1 <- .jlr_CVector_borrowed_Float64_arg(x)
  .jlr_result <- .jlr_CVector_owned_Float64_ret(.jlr_mylib_scale(.jlr_mutated_1, factor, .jlr_CString_borrowed_arg(label)))
  if (.in_place) {
    return(.jlr_result)
  }
  list(x = .jlr_CVector_borrowed_Float64_ret(.jlr_mutated_1), out = .jlr_result)
}
