statistics <- function(data, subject_start, subject_end) {
  results <- data.frame(
    Variable = character(),
    Stats = character()
  )
  for(variable in colnames(data)) {
    var <- data[[variable]]
    if(all(var > subject_start & var < subject_end)) {
      if(class(var) == "numeric") {
        mean_var = mean(var)
        sd_var = sd(var)
        max_var = max(var)
        min_var = min(var)
        Stats <- paste(
          "min:", min_var,
          "max:", max_var,
          "mean:", mean_var,
          "sd:", sd_var
        )
        results <- rbind(results, data.frame(
          Variable = variable,
          Stats = Stats
        ))
      }
      else{
        levels_info <- paste(names(table(var)), table(var))
        results <- rbind(results, data.frame(
          Variable = variable,
          Stats = levels_info
        ))
      }
    }
    if(length(var) < 10) {
      print("data is too short")
    }
    }

  return(results)
}
source("analysis.R")
statistics(data, 10, 50)