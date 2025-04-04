# ### 🟢 Exercise 5 — Safe Error Handling with tryCatch()
# 
# **Task:**
#   Write a function `safe_divide()` that:
#   
#   - Takes two numeric arguments `a` and `b`.
# - Returns `a / b`.
# - If `b` is zero, returns "Cannot divide by zero" without crashing.
# - If `a` or `b` are non-numeric, returns "Invalid input".
# 


safe_divide <- function (a, b, round = FALSE)
{
  if (b == 0) {
    return("Cannot divde by zero")
  }
  if (is.na(a)){
    return(NA)
  } 
  if (round) {
    return(round((a / b),2))
  }
  return(a / b)
}

safe_divide(5, 3, round = TRUE)

safe_divide(5, 0)

safe_divide(NA, 3)

safe_divide(5, 3, round = FALSE)