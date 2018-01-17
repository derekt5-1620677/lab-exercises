## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# ANSWER: The "sum" function in R only takes in numeric, complex,
#         or logical vectors. Because the "my.vector" contains a string,
#         the sum "function" throws an error.
# 

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# ANSWER: Although the programmer used the "install.packages" function,
#         the programmer also needs type the library() to load the
#         function.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# ANSWER: The programmer most likely had a typo. The "initial"
#         variable wasn't defined, the reason it doesn't exist.
#         However, the variable "initials" exist.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c(1, 3, 4))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  return(paste("The difference in lengths is", abs(length(v1) - length(v2))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1, 3, 4), c(3, 53))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  first.or.second <- "first"
  difference <- 0
  if (length(v1) > length(v2)) {
    difference <- length(v1) - length(v2)
  } else if (length(v2) > length(v1)) {
    first.or.second <- "second"
    difference <- length(v2) - length(v1)
  }
  return(paste("Your", first.or.second, "vector is longer by", difference, "elements"))
}


# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c("h", "e"), c("as", 3, 3, 2, 193, 3))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  return(c(v1, v2, v3))
}

# Send 3 vectors to your function to test it.
CombineVectors(c("ab", "c"), c(1, 2, 3), c(1L, 2L, 3L, 4L))


# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(vector.of.names) {
  return(gsub("[A-Z]", "", vector.of.names))
}

