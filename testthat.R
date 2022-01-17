# a script to show use of testthat in R

library(testthat)

string <- "Testing is fun! hellooooo..."
expect_match(string, "Testing") 
expect_match(string, 'hello', ignore.case = TRUE)
# expect_output(as.character(string), 'hello')
