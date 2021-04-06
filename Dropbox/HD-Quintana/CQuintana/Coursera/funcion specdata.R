setwd("//Users//administrador//Dropbox//HD-Quintana//CQuintana//Coursera")
read.csv("specdata/281.csv")
dir("specdata")

# funcion para calcular media de varios archivos en un directorio

pollutantmean <- function(directory, pollutant, id=1:332)
       {
        dat <- data.frame() 
        for(i in 1:length(id))
        {
               id_list <- list.files(directory, full.names = TRUE)
                       #loops through the files, rbinding them together 
                       dat <- rbind(dat, read.csv(id_list[i]))
               }
        return(mean(dat[, which(names(dat) == pollutant)], na.rm = TRUE))
}


        
columnmean<-function(y, removeNA = TRUE){
        nc<-ncol(y)
        means<-numeric(nc)
        for(i in 1:nc){
                means[i]<-mean(y[,i], na.rm = removeNA)
        }
        means
        
}
  


weightmedian <- function(directory, day) {
        files_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for(i in 1:5){
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- dat[which(dat[,"Day"] == day),]
        median(dat_subset[, "Weight"], na.rm = TRUE)
}


weightmedian <- function(directory, day)  {
        files_list <- list.files(directory, full.names=TRUE)   #creates a list of files
        dat <- data.frame()                             #creates an empty data frame
        for (i in 1:5) {                                
                #loops through the files, rbinding them together 
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- dat[which(dat[, "Day"] == day),]  #subsets the rows that match the 'day' argument
        median(dat_subset[, "Weight"], na.rm=TRUE)      #identifies the median weight 
        #while stripping out the NAs
}
