household <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE)
subset1 <- household[household$Date %in%  c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(subset1$Date, subset1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png(file="plot3.png")


plot(datetime, as.numeric(subset1$Sub_metering_1), type="l", ylab="Energy sub metering", xlab=" ")
lines(datetime, as.numeric(subset1$Sub_metering_2), type="l", col="red")
lines(datetime,as.numeric(subset1$Sub_metering_3) , type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()