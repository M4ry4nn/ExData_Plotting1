household <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE)
subset1 <- household[household$Date %in%  c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(subset1$Date, subset1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png(file="plot2.png")
plot(datetime, as.numeric(subset1$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()