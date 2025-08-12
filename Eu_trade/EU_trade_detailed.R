############# Packages
library(forecast)
library(ggplot2)

library(readr)

############ Reading The data
series_190324 <- read_csv("C:/Users/Lenovo/Downloads/series-190324.csv", 
                          col_types = cols(`Trade in Goods (T): EU: Exports: BOP: CP: SA` = col_number()))

#############Data Cleaning and manipulation

dat <- series_190324[c(251:467),]

###### Data frame with variable of interest

df <- data.frame(trade_in_goods=dat$`Trade in Goods (T): EU: Exports: BOP: CP: SA`)

########### Defining Time series from January 2006

tdat <- ts(data = df, start = c(2006,1), frequency = 12)

############ Plotting the timeseries

ts.plot(tdat , ylab = "Trade in Goods" , main = "EU Trade Timeseries")
abline(v=2020.3 , col="green")
abline(v=2016 , col="blue")
text(x =2015 , y=16500 , labels="Brexit", srt=90, col="blue" , cex = 1.5)
text(x=2019.5  ,y =16500 , labels="Covid" , srt = 90, col ="green", cex=1.5)


######### deviding the data set into training and testing part

length(tdat)
train_data <-ts( data = tdat[c(1:205),] , start = c(2006,1), frequency = 12 )

test_data <- tdat[c(206:217),]


######## Defining Naive Model

nmod <- naive(train_data , h=12)

#####Forecasting using Naive model

fnaive <- forecast(nmod)
######Plotting the Naive model

plot(fnaive , ylab = "Trade", xlab = "Time")

############Root Mean Squared Error of Naive Model

rmse_naive <-sqrt(sum((test_data-nmod$mean)^2)/length(test_data))
rmse_naive

############### Simple Exponential Smoothing

ses_model <- ses(train_data, h=12 )
######### Forecaset using Simple exponential smoothing

fses <- forecast(ses_model  )

######### Ploting Simple exponential smoothing

plot(fses, xlab = "Time" , ylab = "Time")

############### Root Mean Squared error of Simple exponentioal Smoothing

rmse_ses<- sqrt(sum((test_data - fses$mean)^2)/length(test_data))
rmse_ses

######### Holtwinter's Smoothing

hw_model <- hw(train_data)

autoplot(train_data , xlab = "Time", ylab = "Value")+ 
  autolayer(hw_model$mean, series = "Holt-Winters Smoothing" )+
  theme(legend.position  = "top" )

############ Holtwinter's Forecasting

fhw <- forecast(hw_model , h=12)

######## Ploting Holt-Winters' Forecasting

plot( fhw, ylab = "Value", xlab = "Time" , main= "Forecasts from Holt-Winters' Method")

######## Root Mean Squared Error of Holtwinter's Model

rmse_hw <- sqrt(sum((test_data-fhw$mean)^2)/length(test_data))
rmse_hw


############Arima model

armodel <- auto.arima(train_data)

######### Forecast using Arima model

farmodel <- forecast(armodel, h=12)
plot( farmodel, xlab = "Time" , ylab = "Value" )

######### Root Mean squared error of arima model 

rmse_arima <- sqrt(sum((test_data - farmodel$mean)^2)/length(test_data))

rmse_arima


####### SSE  Comparison Table

tab <- data.frame(Models = c("Naive Method", "Simple Exponential", "Holt-Winters'", "Arima"),
              RMSE = c(rmse_naive,rmse_ses, rmse_hw,rmse_arima)      )
tab
