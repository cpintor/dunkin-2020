library(ggplot2)

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
