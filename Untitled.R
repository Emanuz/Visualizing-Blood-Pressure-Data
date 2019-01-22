#### Emmanuel M Nimurungi###

# Importing the dataset
library(readxl)
After_dataset <- read_excel("BloodPressure.xls")
View(After_dataset)

# Intial Visualization of Before and After Blood Pressure

library(ggplot2)
theme_set(theme_bw())
ggplot(data = After_dataset,aes(x=Before,y=After)
)+
  geom_point(aes(Before, After, col = BloodPressure))+
  labs(x= 'Before', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Before'),
       caption= 'Source: BloodPressure Capacity visualization')


library(ggplot2)
library(ggalt)
theme_set(theme_bw())
data_select <- After_dataset[After_dataset$After>0 & 
                               After_dataset$After<=9 &
                               After_dataset$Before>0 &
                               After_dataset$Before<=12]
ggplot(data = After_dataset,aes(x=Before,y=After)
)+
  geom_point(aes(Before, After, col = BloodPressure))+
  labs(x= 'Before', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Before'),
       caption= 'Source: BloodPressure Capacity visualization')+
  geom_encircle(data= data_select, 
                aes(x=Before,y=After),
                color = 'yellow',
                size = 2,
                expand = 0.05)

# Another thing the points look few than what is the dataset this is because of overlapping.
# Jittering the points to have a clear visualization

library(ggplot2)
theme_set(theme_bw())
ggplot(data = After_dataset,aes(x=Before,y=After)
)+
  geom_jitter(aes(Before, After, col = BloodPressure))+
  labs(x= 'Before', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Before'),
       caption= 'Source: BloodPressure Capacity visualization')
#  BloodPressure 

# Also a Count plot can help reveal overlap in point, having a look at it 

library(ggplot2)
theme_set(theme_bw())
ggplot(data = After_dataset,aes(x=Before,y=After)
)+
  geom_count(aes(Before, After, col = BloodPressure))+
  labs(x= 'Before', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Before'),
       caption= 'Source: BloodPressure Capacity visualization')

# Lets also see which region contains more points 
library(ggplot2)
library(ggExtra)
theme_set(theme_bw()) 
ploting_fun <- ggplot(After_dataset, aes(Before, After, col = BloodPressure)) + 
  geom_count() 

ggMarginal(ploting_fun, type = "histogram", fill="transparent")
# ggMarginal(ploting_fun, type = "boxplot", fill="transparent") # for boxplot

#.................................BloodPressure Capacity Before.................................

library(ggplot2)
theme_set(theme_bw())
ggplot(data = After_dataset,aes(x=Height,y=After)
)+
  geom_point(aes(Height, After, col = BloodPressure))+
  labs(x= 'Height', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Height'),
       caption= 'Source: BloodPressure Capacity visualization')



# To bring attention, am circlying BloodPressure Before and After
library(ggplot2)
hlibrary(ggalt)
theme_set(theme_bw())
data_select <- After_dataset[After_dataset$After>0 & 
                               After_dataset$After<=9 &
                               After_dataset$Height>0 &
                               After_dataset$Height<=57]
ggplot(data = After_dataset,aes(x=Height,y=After)
)+
  geom_point(aes(Height, After, col = BloodPressure))+
  labs(x= 'Height', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Before'),
       caption= 'Source: BloodPressure Capacity visualization')+
  geom_encircle(data= data_select, 
                aes(x=Height,y=After),
                color = 'yellow',
                size = 2,
                expand = 0.05)

# Points look few than what is the dataset this is because of overlapping.
# Jittering the points to have a clear visualization

library(ggplot2)
theme_set(theme_bw())
ggplot(data = After_dataset,aes(x=Height,y=After)
)+
  geom_jitter(aes(Height, After, col = BloodPressure))+
  labs(x= 'Height', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Height'),
       caption= 'Source: BloodPressure Capacity visualization')
# This exposes that kids who BloodPressure have high chances of having low BloodPressure Capacity than their counterparts of the same Before

# Also a Count plot can help reveal overlap in point, having a look at it 

library(ggplot2)
theme_set(theme_bw())
ggplot(data = After_dataset,aes(x=Height,y=After)
)+
  geom_count(aes(Height, After, col = BloodPressure))+
  labs(x= 'Height', 
       y= 'BloodPressure Capacity',
       main= paste('Scatterplot of BloodPressure Capacity Against Height'),
       caption= 'Source: BloodPressure Capacity visualization')

# Lets also see which region contains more points 
library(ggplot2)
library(ggExtra)
theme_set(theme_bw()) 
ploting_fun <- ggplot(After_dataset, aes(Height, After, col = BloodPressure)) + 
  geom_count() 

ggMarginal(ploting_fun, type = "histogram", fill="transparent")

# Interesting to see 3 pairs of Kids with same height, BloodPressure Capacity. 4 dont BloodPressure and 2 BloodPressure
