source("load_data.R")

png(file = "plot3.png", width=480, height=480)
with(data_2day, plot(Time, Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering"))
lines(data_2day$Time, data_2day$Sub_metering_2, col="red")
lines(data_2day$Time, data_2day$Sub_metering_3, col="blue")
legend("topright", 
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1
       )

dev.off() 

