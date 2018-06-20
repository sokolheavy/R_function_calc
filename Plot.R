#install.packages("ggplot")
#install.packages("ggplot2")
library(ggplot)
library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + geom_point()
ggplot(data = cars, aes(x = speed, y = dist)) + stat_identity()
ggplot(data = cars, aes(x = speed)) + geom_bar()
ggplot(data = cars, aes(x = speed)) + geom_bar() + coord_polar()

#theme_bw() - black,white color
ggplot(data = cars, aes(x = speed, y = dist)) + stat_identity() + theme_bw()

ggplot(data = cars, aes(x = speed, y = dist, color = speed)) + geom_point()

ggplot(data = cars, aes(x = speed, 
                        y = dist, 
                        color = speed, 
                        size = dist)) + geom_point()

ggplot(data = cars, aes(x = speed > 15, y = dist)) + geom_boxplot()