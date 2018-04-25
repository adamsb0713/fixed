{
  source("Scripts/helper.R");
  weatherData = read.csv("Data/LansingNOAA2016.csv", 
                         stringsAsFactors= FALSE);
  plotData = ggplot(weatherData) + 
    geom_point(aes(x=windSpeed, y=abs(tempDept)),
               color="darkblue", size=3, shape=5, 
               alpha = 0.7) +
  
  theme_bw() +
  labs(title = "WindSpeed vs. Temperature Departure",
       subtitle = "Lansing, Michigan: 2016", 
       x = "WindSpeed (mph)",
       y = "Temperature Departure (F)") +
  
    theme(axis.title.x=element_text(size=12, color="darkgreen"),
          axis.title.y=element_text(size=12, color="darkgreen"),
          plot.title=element_text(size=16, face="bold",
                                  color ="purple"),
          plot.subtitle=element_text(size=10, face="bold.italic",
                                     color ="lightgreen", family="serif")) +
    geom_smooth(mapping=aes(x=windSpeed, y=tempDept), method="lm",
                color="purple", size=0.7, linetype=5,
                fill="lightblue"); 
  plot(plotData);
  
  cat("The scatterplot shows that there is the most correlation between wind speed and temperature departure in 
      wind speed range of 5-10mph and temperature departure of 0-10 F")
}