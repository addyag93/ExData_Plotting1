#plot 1
my_data<- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = c("?"))
my_subset_data<- subset(my_data,Date %in% c("1/2/2007","2/2/2007") )
png("plot1.png", width=480, height=480)
par(mfrow=c(1,1))
hist(my_subset_data$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()