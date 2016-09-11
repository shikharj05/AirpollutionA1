corr<-function(directory,threshold=0){
  cr <- c()
  for (id in 1:332) {
    filename <- paste(directory, "/",
                      sprintf("%03d", as.integer(id)), ".csv", sep = "")
    data <- na.omit(read.csv(filename))
    complete <- nrow(data)
    if (complete <= threshold) {
      next
    }
    sulfate <- data[["sulfate"]]
    nitrate <- data[["nitrate"]]
    cr <- c(cr, cor(sulfate, nitrate))
  }
  cr
}
