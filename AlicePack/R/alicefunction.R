#' Alice Function
#'
#' @param a La reponse A
#' @param b La reponse B
#' @param c La reponse C
#' @param x Le parametre X
#' @param y Le parametre Y
#' @param z Le parametre Z
#' @return This function returns the values computed by the function, or an error message
#' @export
#'
#' @examples
#' 
alice_function <- function(a = 1, b = 0, c = 4, x = 1:12, y = 42, z = 21:30){
  if(sum(is.infinite(c(a, b, c, x, y, z))) > 0){
    return("Please use only finite values")
  }
  else{
    if(sum(c*z == 0) > 0){
      return("Do not divide by zero !")
    }
    else{
   # return
      to_return <- ((a*x + b*y)**2)/(c*z)
      plot(y = to_return, x = x, type = "b", ylab = "(aX + bY)^2/cZ", xlab = "")
      return(to_return)
      }
    }
}
