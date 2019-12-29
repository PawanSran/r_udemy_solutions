# load dataset

data <- read.csv(file.choose())
mov <- data

head(data)
str(mov)
summary(data$Genre)

mov$Genre <- as.character(mov$Genre)
# filter data 
filt <- (mov$Genre == "action") | (mov$Genre == "adventure") | (mov$Genre == "animation") | (mov$Genre == "comedy") | (mov$Genre == "drama")
filt

filtered_data <- mov[filt,]
filtered_data$Genre <- as.factor(filtered_data$Genre)

colnames(filtered_data) <- c("days_week", "Director", "Genre", "title", "release_date", "Studio",
                             "adjusted_gross","budget", "gross","imdb_rating", "movielens_rating", "overseas_gain",
                             "overseas", "profit_mill", "profit","runtime", "us_sales", "gross_us")

filt_2 <- (filtered_data$Studio == "Buena Vista Studios") | (filtered_data$Studio == "WB") | (filtered_data$Studio == "Fox") | (filtered_data$Studio == "Universal") | (filtered_data$Studio == "Sony") | (filtered_data$Studio == "Paramount Pictures")
filtered_data <- filtered_data[filt_2,]
#head(filtered_data)
levels(filtered_data$Genre)

?geom_boxplot
# create ggplot - genre , gross % us , with budget on size and studio on color
plot <- ggplot(data = filtered_data, aes(x=Genre, y=gross_us, color=Studio, size=budget))

plot_2 <- plot + geom_jitter() + geom_boxplot(alpha=0.7)

plot_2
# add title and xlab ylab
plot_3 <- plot_2 + xlab("Genre") + ylab("Gross % US") 

plot_4 <- plot_3 + ggtitle("Domestic Gross % by Genre")

# theme
?theme
plot_5 <- plot_4 + theme(
  #this is a shortcut to alter ALL text elements at once:
  text = element_text(family="Comic Sans MS"),
  #Axes titles:
  axis.title.x = element_text(colour="Blue", size=30),
  axis.title.y = element_text(colour="Blue", size=30),
  #Axes texts:
  axis.text.x = element_text(size=20),
  axis.text.y = element_text(size=20),  
  #Plot title:
  title = element_text(colour="Black",
                   size=40),
  #Legend title:
  legend.title = element_text(size=20),
  #Legend text
  legend.text = element_text(size=12))

plot_5




