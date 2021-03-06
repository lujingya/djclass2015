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






# ֱ��ͼ
ggplot(small)+geom_histogram(aes(x=price))

ggplot(small)+geom_histogram(aes(x=price, fill=cut))

ggplot(small)+geom_histogram(aes(x=price, fill=cut), position="dodge")

# ��״ͼ
ggplot(small)+geom_bar(aes(x=clarity))

ggplot()+geom_bar(aes(x=c(LETTERS[1:3]),y=1:3), stat="identity")

#�ܶȺ���ͼ
ggplot(small)+geom_density(aes(x=price, colour=cut))

ggplot(small)+geom_density(aes(x=price,fill=clarity))

#��ʽͼ
ggplot(small)+geom_boxplot(aes(x=cut, y=price,fill=color))




## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.

#����ϵͳ��Coordinante��
ggplot(small)+geom_bar(aes(x=cut, fill=cut))+coord_flip()

ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar(theta="y")

# ����ͼ
ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar()

# �϶����õ��ͼ
ggplot(small)+geom_bar(aes(x=clarity, fill=cut))+coord_polar()

#ͼ�㣨Layer��

p = ggplot(mtcars, aes(x = hp, y = mpg))+
  geom_point(size = 3)
p

p = ggplot(mtcars, aes(x = hp, y = mpg))+
  geom_point( size = 3) + 
  stat_smooth(method = 'loess')
p

#���棨Facet��

ggplot(small, aes(x=carat, y=price))+
  geom_point(aes(colour=cut))+
  scale_y_log10() +
  facet_wrap(~cut)+
  stat_smooth()


p + theme_wsj()

