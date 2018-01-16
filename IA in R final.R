library('tidyverse')

RawData <- read.csv('preprocessed_data.csv')

period1 <- RawData %>%
  filter( year >= 1992 & year <=2007) %>% droplevels() 

period2 <- RawData %>%
  filter( year >= 2008 & year <=2015) %>% droplevels() 

mean_EC_period1 <- period1 %>%
  summarise(mean(period1$event_clarity, na.rm= TRUE))

mean_DP_period1 <- period1 %>%
  summarise(mean(period1$date_prec, na.rm= TRUE))

mean_EC_period2 <- period2 %>%
  summarise(mean(period2$event_clarity, na.rm= TRUE))

mean_DP_period2 <- period2 %>%
  summarise(mean(period2$date_prec, na.rm= TRUE))

#mean_EC = bind_cols('mean_EC_period1', 'mean_EC_period2')

#combinedperiods <- RawData %>%
#  group_by(year) %>%
#  summarise(mean(event_clarity, na.rm= TRUE) %>%
#              summarise(mean(date_prec, na.rm = TRUE))

ggplot(data = RawData) + 
  geom_point(mapping = aes(x = RawData$date_prec, y= RawData$year))
                           
#                           colour = event_clarity)) 

ggplot(data = period1) + 
  geom_bar(mapping = aes(x = period1$date_prec,  fill = period1$event_clarity))

ggplot(data = period2, aes(fill = period2$year)) + 
  geom_bar(mapping = aes(x = period2$date_prec))

ggplot(data = RawData) + 
  geom_bar(mapping = aes(x = RawData$year, colour = RawData$event_clarity))
