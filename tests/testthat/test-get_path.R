context("get_babette_path")

test_that("use", {

  testthat::expect_equal(
    system.file("extdata", "anthus_nd2.fas", package = "babette"),
    babette::get_babette_path("anthus_nd2.fas")
  )

  testthat::expect_equal(
    system.file("extdata", "anthus_aco.fas", package = "babette"),
    babette::get_babette_path("anthus_aco.fas")
  )

})

test_that("abuse", {

  testthat::expect_error(
    babette::get_babette_path("abs.ent"),
    "'filename' must be the name of a file in 'inst/extdata'"
  )

})
