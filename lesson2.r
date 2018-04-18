{
  source("Scripts/helper.R");  
  weatherData = read.csv("Data/LansingNOAA2016.csv",
                         stringsAsFactor = FALSE);
  
  plotData = ggplot(weatherData) + 
    geom_point(aes(x=avgTemp, y=relHum),
  color="darkgreen", size=2.5, shape=17, alpha = 0.4) +
    theme_bw() + 
    labs(title = "Humidity vs. Temperature", 
         subtitle = "Lansing, Michigan: 2016",
         x= "Temperature (F)",
         y= "Humidity (%)") +
           theme_bw()+
    theme(axis.title.x=element_text(size=14,
                                    color="orangered2"),
          axis.title.y=element_text(size=14,
                                     color="orangered4"),
          plot.title=element_text(size=18, face="bold",
                                  color="darkblue"),
          plot.subtitle=element_text(size=10,
                                     face="bold.italic", color="brown",
                                     family="serif")) +
    geom_smooth(mapping=aes(x=avgTemp, y=relHum),
                method="lm",
                color="red", size=0.8, linetype=4,
                fill="lightblue"); 
  
  plot(plotData);
  
}