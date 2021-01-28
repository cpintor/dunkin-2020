library(ggplot2)
library(dplyr)
library(lubridate)

data <- read.csv("dunkin.csv")
data2019 <- read.csv("dunkin-2019.csv")
dataTotal <- read.csv("dunkin-total.csv")

#print(data)
#print(data2019)

# save png file
ggsave(file="dunkin-chart-3.png", width=10, height=5, dpi=300)

# data <- data.frame("dunkin.csv")

p <- ggplot(dataTotal, aes(x=date, y=price)) +
  #geom_bar(stat = "identity")
  geom_point()

p + guides(x = guide_axis(angle = 90))

# Combining by month, 2019
byMonth2019 <- aggregate(cbind(price)~month(date),
                     data=data2019,FUN=sum)

byMonth2020 <- aggregate(cbind(price)~month(date),
                         data = data, FUN = sum)

print(byMonth2019)
print(byMonth2020)

# Creating data frames for months in year
month2019 <- c(10, 11, 12)
total2019 <- c(29.48, 36.20, 40.49)

df2019 <- data.frame(month2019, total2019)

print(df2019)

g <- ggplot(df2019, aes(x=month2019, y=total2019)) +
  #geom_bar(stat = "identity")
  geom_point()

g + guides(x = guide_axis(angle = 90))

month2020 <- c(1:12)
total2020 <- c(30.54, 24.81, 36.29, 38.19, 38.43, 40.06, 55.99, 31.55, 49.74, 55.16, 46.86, 37.19)
