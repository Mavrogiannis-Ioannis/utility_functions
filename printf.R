# A convenience printing function.
printf <- function(text, val, k = 1, deparse = TRUE) {
    if (missing(text) & !(missing(val))){
        text <- deparse(substitute(val))
    }
    if (missing(val)) {
        if (exists(deparse(substitute(text)))) {
            val <- text
            flag <- TRUE
        } else {
            flag <- FALSE
        }
    } else {
        flag <- TRUE
    }
    if (deparse){
        text <- deparse(substitute(text))
    }
    k <- paste(rep("*", k), collapse = "")
    cat(paste0("\n\n\t", k, " ", text, " ", k, "\n\n"))
    if (flag) {
        print(val)
    }
}
