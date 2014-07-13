source("load_data.R")

png(file = "plot4.png", width=480, height=480)
par(mfrow = c(2,2))

with(data_2day, plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

with(data_2day, plot(Time, Voltage, type="l", xlab="datetime", ylab="Voltage"))

with(data_2day, plot(Time, Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering"))
lines(data_2day$Time, data_2day$Sub_metering_2, col="red")
lines(data_2day$Time, data_2day$Sub_metering_3, col="blue")
legend("topright", 
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,    ## the line type appearing in legend
       bty="n")  ## the type of box to be drawn around the legend. The allowed values are "o" (the default) and "n"

with(data_2day, plot(Time, Global_reactive_power, type = "l", xlab="datetime"))

dev.off()

