#Final test Isualization_using_R
#3L Group Lujingya 

#Lines & density
lines(c(1.5,2.5),c(3,3))
data("mtcars")
d1 = density(mtcars$cyl,from=0,to=50)
d2 = density(mtcars$mpg,from=0,to=50)
plot(d1,main="",xlab="")
lines(d2, col = "purple")

# curve and polygon

require(ggplot2)
pie <- ggplot(mtcars, aes(x = factor(1), fill = factor(cyl))) +
  geom_bar(width = 1, position = "fill", color = "black")
pie
pie + coord_polar(theta = "y")






# 直方图
ggplot(small)+geom_histogram(aes(x=price))

ggplot(small)+geom_histogram(aes(x=price, fill=cut))

ggplot(small)+geom_histogram(aes(x=price, fill=cut), position="dodge")

# 柱状图
ggplot(small)+geom_bar(aes(x=clarity))

ggplot()+geom_bar(aes(x=c(LETTERS[1:3]),y=1:3), stat="identity")

#密度函数图
ggplot(small)+geom_density(aes(x=price, colour=cut))

ggplot(small)+geom_density(aes(x=price,fill=clarity))

#箱式图
ggplot(small)+geom_boxplot(aes(x=cut, y=price,fill=color))




## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.

#坐标系统（Coordinante）
ggplot(small)+geom_bar(aes(x=cut, fill=cut))+coord_flip()

ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar(theta="y")

# 靶心图
ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar()

# 南丁格尔玫瑰图
ggplot(small)+geom_bar(aes(x=clarity, fill=cut))+coord_polar()

#图层（Layer）

p = ggplot(mtcars, aes(x = hp, y = mpg))+
  geom_point(size = 3)
p

p = ggplot(mtcars, aes(x = hp, y = mpg))+
  geom_point( size = 3) + 
  stat_smooth(method = 'loess')
p

#分面（Facet）

ggplot(small, aes(x=carat, y=price))+
  geom_point(aes(colour=cut))+
  scale_y_log10() +
  facet_wrap(~cut)+
  stat_smooth()


p + theme_wsj()

