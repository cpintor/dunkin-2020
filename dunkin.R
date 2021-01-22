library(ggplot2)

data <- read.csv("dunkin.csv")

print(data)

# save png file
#ggsave(file="dunkin-chart.png", width=10, height=5, dpi=300)

# data <- data.frame("dunkin.csv")

p <- ggplot(data, aes(x=date, y=price)) +
  #geom_bar(stat = "identity")
  geom_point()

p + guides(x = guide_axis(angle = 90))