library(lubridate)
library(dplyr)
library(tidyr)
  
analyse_data <- function() {
  #load data
  games <- read.csv("data/games.csv")
  players <- read.csv("data/players.csv")
  plays <- read.csv("data/plays.csv")
  tackles <- read.csv("data/tackles.csv")
  tw_1 <- read.csv("data/tracking_week_1.csv")
  
  #When data was initially loaded and names(plays) was run, names included
  #"v1" "v2" "v3" "v4" "v5"... but the original data file had headers
  #In the event this happens again, the following code should be run
  #to set correct headers to data frame:
  # names(plays) <- plays[1,]
  # plays <- plays[2:12487,]
  
  #convert dates and times to POSIX
  games <- mutate(games, gameDate = mdy(gameDate), gameTimeEastern = hms(gameTimeEastern))
  players <- mutate(players, birthDate = ymd(birthDate))
  tw_1 <- mutate(tw_1, time = ymd_hms(time))
  
  #create a Team data set
  
  #create a max_age column
  
  #create a min_age column
  
  #create an avg_age column
  
  #create a max_bmi column
  
  #create a min_bmi column
  
  #create an avg_bmi column
}