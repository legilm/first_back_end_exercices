describe_vector <- function(x, summary_fun = NULL) {
    if (!is.numeric(x)) {
        stop("The input 'x' must be a numeric vector.")
    }
    
    if (is.null(summary_fun)) {
        result <- list(
            mean = mean(x),
            median = median(x),
            sd = sd(x)
        )
        return(result)
    }
    
    if (summary_fun == "mean") {
        return(mean(x))
    } else if (summary_fun == "median") {
        return(median(x))
    } else if (summary_fun == "sd") {
        return(sd(x))
    }
    

    stop("Invalid value for 'summary_fun'. It must be NULL or one of 'mean', 'median', or 'sd'.")
}


x <- c(1, 2, 3, 4, 5)

describe_vector(x)

describe_vector(x, summary_fun = "mean")

describe_vector(x, summary_fun = "sum") 
