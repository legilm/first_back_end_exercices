# ### 🟢 Exercise 3 — Argument Value Restriction
# 
# **Task:**
#     Write a function `convert_temperature()` that:
#     
#     - Takes `temp` (numeric) and `unit` ("C", "F", or "K").
# - Converts `temp` to Celsius.
# - If `unit` is invalid, stops with an informative error.
# - Add a `round = TRUE/FALSE` argument to control rounding.
# 
# ---


convert_temperature <- function(temp, unit = c("C", "F", "K"), round = TRUE/FALSE){

    if (!unit %in% c("C", "F", "K")){
        stop("The unit in neither C, F or K")
    }
    if (unit == "C"){
        return(temp)
    }
    if (unit == "F"){
        return((temp - 32) * 5/9)
    }
    if (unit == "K"){
        return(temp - 273.15)
    }
    return(temp, unit)
}

convert_temperature(10, "F", round = TRUE)

convert_temperature(10, "C")

convert_temperature(100, "K")

convert_temperature(20, "X")