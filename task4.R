# ### 🟢 Exercise 4 — Defensive Refactoring
# 
# **Task:**
#     Refactor this ugly function to make it clear, functional, and robust:
#     
#     ```r
# complex_sum <- function(x){
#     result <- 0
#     for(i in 1:length(x)){
#         if(!is.na(x[i])){
#             if(x[i] >= 0){
#                 result <- result + x[i]
#             }
#         }
#     }
#     return(result)
# }
# 
# ```
# 
# Include input checks and NA handling.
# 
# ---

complex_sum <- function(x, result = 0) {
        for(i in seq_along(x)){
            if (!is.na(x[i]) && x[i] >= 0){
            result <- result + x[i]
        }
        }
    return(result)
}

complex_sum(c(1, 2, 3, NA, -1, 4))