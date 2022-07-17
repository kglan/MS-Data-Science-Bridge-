#1




factorial <- function(x){
  num = as.integer(x)
  fact = 1
  for(i in 1:num){
  fact = fact * i
  }
  cat(fact)
}
factorial(12)








#2
new_sequence <- as.numeric (seq(from =20, to= 50, by=5))
new_sequence
class(new_sequence)

#3
quadratic <- function(a, b, c) {
  
  discriminant <- (b^2) - (4*a*c)
  
  if(discriminant < 0) {
    return(paste("No real roots."))
  }
  
  else if(discriminant > 0) {
    equation1 <- (-b + sqrt(discriminant)) / (2*a)
    equation2 <- (-b - sqrt(discriminant)) / (2*a)
    
    return(paste("Roots are equal to", equation1,"and", equation2))
  }
  else 
    equation3 <- (-b) / (2*a)
  return(paste("The root is eqaul to", equation3))

}
quadratic(1,4,3)





