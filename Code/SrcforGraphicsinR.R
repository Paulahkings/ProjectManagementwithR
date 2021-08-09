#creating Publication-Quality Graphics with ggplot2
library("ggplot2")
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

#Challenge 1
#modify the example so that the figure shows how life expectancy has changed over time:
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) + geom_point()

#Challenge 2
#Modify the code from the previous challenge to color the points by the “continent” column. What trends do you see in the data? 
#Are they what you expected?
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color=continent)) +
  geom_point()

#layers
#the by aesthetic tells ggplot to draw a line for each country.
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line()

#visualizing both point and line
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line() + geom_point()

#transformations and statistics
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

# change the scale of units on the x axis using the scale functions.
#modify the transparency of the points, using the alpha function
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10()

#fit a simple relationship to the data by adding another layer, geom_smooth
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10() + geom_smooth(method="lm")

#make the line thicker by setting the size aesthetic in the geom_smooth layer
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10() + geom_smooth(method="lm", size=1.5)

#multipanel figures
americas <- gapminder[gapminder$continent == "Americas",]

ggplot(data = americas, mapping = aes(x = year, y = lifeExp)) +
  geom_line()+
  facet_wrap( ~ country) +
  theme(axis.text.x = element_text(angle = 45))


#exporting figures
