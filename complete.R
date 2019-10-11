#Part 2
#Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. A prototype of this function follows

complete <- function(directory, id=1:332) {
  
  directory <- paste(getwd(), "/", directory ,"/", sep="")
  
  files <- list.files(directory)
  
  data<- data.frame()
  
    for(i in id){
    read.dir <- read.csv(paste(directory, files[i], sep=""))
    nobs <- sum(complete.cases(read.dir))
    a <- data.frame(i, nobs)
    data <- rbind(data, a)
    colnames(data) <- c("id", "nobs")
    }
 return(data.frame(data)) 
  }

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
