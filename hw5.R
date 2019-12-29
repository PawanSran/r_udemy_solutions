# read file

data_hw5 <- read.csv(file.choose())
head(data_hw5)

#create dataframe and then merge with original data
data_codes <- data.frame(code = Country_Code, lexp_60 = Life_Expectancy_At_Birth_1960, 
                         lexp_13 = Life_Expectancy_At_Birth_2013)
head(data_codes)

data_codes_1960 = data_hw5[data_hw5$Year==1960,]
head(data_codes_1960)

data_codes_2013 = data_hw5[data_hw5$Year==2013,]
head(data_codes_2013)


?merge
final_data_1960 <- merge(x=data_codes_1960, y=data_codes[,-3], by.x="Country.Code", by.y="code")
head(final_data_1960)

final_data_2013 <- merge(x=data_codes_2013, y=data_codes[,-2], by.x="Country.Code", by.y="code")
head(final_data_2013)

# Life Expectancy (y-axis) and Fertility Rate (x-axis) statistics by Country  categorised by Countries’ Regions
?qplot
library(ggplot2)
str(final_data_1960)
qplot(data=final_data_1960, x=Fertility.Rate, y = lexp_60, color=Region)
qplot(data=final_data_2013, x=Fertility.Rate, y = lexp_13, color=Region)
