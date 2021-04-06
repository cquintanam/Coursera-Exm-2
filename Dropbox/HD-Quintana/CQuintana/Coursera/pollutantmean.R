setwd("//Users//administrador//Dropbox//HD-Quintana//CQuintana//Coursera")

dir("specdata")

pollutantmean <- function(directory, pollutant, id = 1:332)
{
        dat <- data.frame() 
        for(i in 1:length(id))
        {
                id_list <- list.files(directory, full.names = TRUE)[id]
                #loops through the files, rbinding them together 
                dat <- rbind(dat, read.csv(id_list[i]))
        }
        return(mean(dat[, which(names(dat) == pollutant)], na.rm = TRUE))
}

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)
