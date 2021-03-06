source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot3.png")

png(filename = plotFile, width = 480, height = 480)
par(mfrow = c(1,1))

with(data, plot(datetime, sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = "", col = "black"))
lines(data$datetime, data$sub_metering_2, col = "red")
lines(data$datetime, data$sub_metering_3, col = "blue")
legend("topright", pch = 151, col = c("black","red", "blue")
       , legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))

dev.off()