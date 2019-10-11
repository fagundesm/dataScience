#Part 1
#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows

pollutantmean <- function(directory, pollutant, id=1:332) {
  
  directory <- paste(getwd(), "/", directory ,"/", sep="")
  
  datas <- NA
  files <- list.files(directory)
  for(i in id){
    arq.dir <- paste(directory, files[i], sep="")
    read.dir <- read.csv(arq.dir)
    datas <-rbind(datas, read.dir)
  }
  mean(datas[[pollutant]], na.rm = TRUE)
}

pollutantmean("specdata", "sulfate", id=1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)



