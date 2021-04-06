setwd("//Users//administrador//Dropbox//HD-Quintana//CQuintana//Coursera")

complete <- function(directory, files = 1:332)
{
dat <- data.frame(id = 1:332)
for(i in 1:332)
{
dat$nobs[i] <- dim(na.omit(read.csv(list.files(directory, full.names = TRUE)[i])))[1]
}
data = dat[files,]
return(data)
}
