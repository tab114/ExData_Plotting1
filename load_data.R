# Load dataset

# Example of time conversion from a random row just to confirm.. 
strptime("16/12/2006, 17:24:00", "%d/%m/%Y, %H:%M:%S")
as.Date("16/12/2006", "%d/%m/%Y")

## Load Data and create the subsetted data frame
file <- "household_power_consumption.txt"
data <- read.table(file,
                header=TRUE,
                sep=";",
                colClasses=c("character", "character", rep("numeric",7)),
                na.strings="?")
# convert date and time variables to Date/Time class
data$Time <- strptime(paste(data$Date, data$Time, sep=", "), "%d/%m/%Y, %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
# only use data from the dates 2007-02-01 and 2007-02-02
data_2day <- subset(data, data$Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
tail(data_2day)
head(data_2day)

### Alternative way to load data, recommended by Eyal soreq, can't understand exactly how it works
## dat <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';')
## head(dat)
## colnames(dat) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))
## head(dat)
## watch instruction week 4 getting and cleaning data first 3 lectures



### Alternative way to load data, taking to much time in my computer for a reason
## myFile <- "household_power_consumption.txt"
## mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
## dfData <- read.csv2.sql(myFile,mySql)