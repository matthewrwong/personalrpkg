test_that("the value is finite",{
  expect_false(is.infinite(log_summed_exps(seq(1,10000,by=1))))
})
