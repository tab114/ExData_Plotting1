source("load_data.R")

png(file = "plot2.png", width=480, height=480)

with(data_2day, plot(Time, Global_active_power,
     type="l",    ##"l" for lines
     xlab="",
     ylab="Global Active Power (kilowatts)")
    )

dev.off()
