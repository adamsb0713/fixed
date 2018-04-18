{
  source("Scripts/helper.R");     
  packageData = read.csv("Data/AccidentalDeaths.csv"); 
  
  plotData = ggplot(packageData) + 
    geom_point( aes(x=time, y=value)) +
    ggtitle("Accidental Death in the US (1973-1978)")+
    scale_x_continuous(breaks = seq(1973,1979, by=.5))+
    theme(axis.text.x=element_text(angle=45, hjust=1));
  
  plot(plotData);
  
}