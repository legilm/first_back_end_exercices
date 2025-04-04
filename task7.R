# ### 🟢 Exercise 7 — Functional Style & First-Class Functions
# 
# **Task:**
#     Write a function `apply_and_sum()` that:
#     
#     - Takes a numeric vector and a function.
# - Applies the function to each element.
# - Returns the sum of the results.
# 
# Example:
#     
#     ```r
# apply_and_sum(1:5, function(x) x^2) # returns 55
# 
# ```


apply_and_sum <-  function(x, fun){
    
    if (!is.numeric(x)){
        warning("The input 'x' must be a numeric vector.")
    }
    if (!is.function(fun)){
        stop("The input 'fun' must be a function.")
    }
    result <- sapply(x, fun)
    result <- sum(result)
    return(result)
}


apply_and_sum(1:5, function(x) x^2)