#' log summed exp
#' @param x vector of numeric values
#' @return the value of log(sum(exp(x))
#' @description
#' For example, let x=<1,2,3>. Then this function will return log(exp(1)+exp(2)+exp(3)). I think the HW is wrong, and you need to subtract the largest value
#'
#' @export


log_summed_exps=function(x){

  x=sort(x,decreasing=TRUE)
  xj=x[-1]
  xj=xj[-length(xj)]
  xn=rep(x[1],length(xj))

  value=x[1]+log(1+sum(exp(xj-xn)))
  return(value)
}

