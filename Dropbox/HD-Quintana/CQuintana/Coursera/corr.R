setwd("/Users/administrador/Dropbox/HD-Quintana/CQuintana/Coursera")

corr <- function(directory, threshold = 0) {
        source('complete.R')
        Monitors <- complete(directory, 1:332)
        thres_Monitors <- Monitors[Monitors$nobs >= threshold,] # subset of threshold Monitors
        id_list <- list.files(directory, full.names = TRUE)[thres_Monitors$id]
        
        result <- vector()
        
        for(i in 1:length(id_list)){
               result[i] <- cor(na.omit(read.csv(id_list[i]))$sulfate, 
                    na.omit(read.csv(id_list[i]))$nitrate)
                
        }
        return(result)
}