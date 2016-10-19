household <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE)
subset1 <- household[household$Date %in%  c("1/2/2007", "2/2/2007"),]
png(file="plot1.png")
hist(as.numeric(subset1$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
