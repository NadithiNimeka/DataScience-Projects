
#HISTOGRAMS
hist1 <- hist (dset2$Age, main = "Individuals age",
               xlab = "Age",
               ylab = "frequency of users", 
               xlim = c(00,100),
               ylim = c(0,350), 
               angle = 45,
               breaks = 10,
               col = "cyan4")
legend_text <- paste("Count: ", hist1$counts)
text(x = hist1$mids, y = hist1$counts, labels = legend_text, pos = 3, cex = 0.8)
print(hist1$counts)


hist2 <- hist(dset2$Hours.per.day, 
        main = "Music Playing Hours",
        xlab = "Hours Per Day",
        ylab = "frequency of users",
        
        col = "gold",
        breaks = seq(0,24, by = 2)
        ) 
legend_text <- paste("Count: ",hist2$counts)
text(x = hist2$mids, y = hist2$counts, labels = legend_text ,pos = 3, cex = 0.7)
print(hist2$breaks)
print(hist2$counts)
print(legend_text)

custom_breaks <- seq(0, 24, by = 2)
# Cut the data into intervals
hour_intervals <- cut(dset2$Hours.per.day, breaks = custom_breaks, include.lowest = TRUE)
# Count the frequencies
frequency_table <- table(hour_intervals)
# Create a bar plot
barplot(frequency_table,
        main = "Music Playing Hours",
        xlab = "Hours Per Day",
        ylab = "Frequency of Users",
        col = "gold",
        ylim = c(0,360))
# Add counts as text labels
text(x = barplot(frequency_table, plot = FALSE), y = frequency_table,
     labels = (frequency_table), pos = 3, cex = 0.8, col = "black")


hist3 <- hist(dset2$Anxiety, 
              main = "Anxiety",
              xlab = "Anxiety Level (1-10)",
              ylab = "No of Users",
              xlim = c(0,10),
              ylim = c(0,140),
              col = "hotpink3") 
legend_text <- paste("Count: ", hist3$counts)
text(x = hist3$mids, y = hist3$counts, labels = legend_text, pos = 3, cex = 0.8)
print(hist3$counts)


hist4 <- hist(dset2$Depression, 
              main = "Depression",
              xlab = "Depression Level (1-10)",
              ylab = "No. of Users",
              xlim = c(0,10),
              ylim = c(0,140), 
              col = "darkorchid") 
legend_text <- paste("Count: ", hist4$counts)
text(x = hist4$mids, y = hist4$counts, labels = legend_text, pos = 3, cex = 0.8)
print(hist4$counts)



hist5 <- hist(dset2$Insomnia, 
              main = "Insomnia",
              xlab = "Insomnia Level (1-10)",
              ylab = "No. of Users",
              xlim = c(0,10),
              ylim = c(0,250), 
              col = "khaki1")   
legend_text <- paste("Count: ", hist5$counts)
text(x = hist5$mids, y = hist5$counts, labels = legend_text, pos = 3, cex = 0.8)
print(hist5$counts)

hist6 <- hist(dset$OCD, 
              main = "OCD",
              xlab = "OCD Level (1-10)",
              ylab = "No. of Users",
              xlim = c(0,10),
              ylim = c(0,350), 
              col = "indianred")    
legend_text <- paste("Count: ", hist6$counts)
text(x = hist6$mids, y = hist6$counts, labels = legend_text, pos = 3, cex = 0.8)
print(hist6$counts)



#BAR CHARTS

barp2 <- table(dset2$Fav.genre)
barplot(barp2,
        main = "Favorite genre explanation",
        xlab = "Fav genre",
        ylab = "Frequency",
        xlim = c(0,16),
        ylim = c(0,200),
        space = 0.3,
        width = 0.8,
        col = "skyblue3",
        names.arg=levels(barp2)
        )
legend("topleft", legend = paste(names(barp2), " - ", barp2), y.intersp = .20  , bty = "n", cex = 0.8, col = "black")
print(barp2)


#PIE CHARTS
#naming piechart
pie1 <- dset2$Primary.streaming.service
# Calculate percentages/ piepercent<- round((100*(length(pie1)))/sum(length(pie1)), 2)
piepercent <- prop.table(table(pie1)) * 100
# Create a pie chart
pie(piepercent,
    labels = paste(names(piepercent), "(", round(piepercent, 2), "%)"),
    main = "Streaming Service Distribution",
    col = rainbow(length(piepercent)),
    init.angle = 90)
# Add a legend
#legend("bottomleft",y.intersp = .5, x.intersp = .1, bty="n", lty=0.75, lwd=1.5, legend = paste(names(piepercent),"-", round(piepercent, 1),"%"), cex = 0.7,fill = rainbow(length(piepercent)))


pie2 <- dset2$Fav.genre
piepercent2 <- prop.table(table(pie2)) * 100
pie(piepercent2,
    labels = paste(names(piepercent2)),
    main = "Favorite Genre Distribution",
    col = rainbow(length(piepercent2)),
    init.angle = 90)
legend("bottomleft",
       y.intersp = .3, 
       x.intersp = .1, 
       bty="n", 
       lty=0.5, 
       lwd=2, 
       text.width = 0,
       legend = paste(names(piepercent2),"-", round(piepercent2, 1),"%"),
       cex = 0.8,
       fill = rainbow(length(piepercent2)),
       )
pie3 <- dset2$Music.effects
piepercent3 <- prop.table(table(pie3)) * 100
pie(piepercent3,
    labels = paste(names(piepercent3), "(", round(piepercent3, 2), "%)"),
    main = "Music Effect Distribution",
    col = rainbow(length(piepercent3)),
    init.angle = 90)

#BOX PLOT
boxplot1<- boxplot(dset2$Anxiety,
                   dset2$Depression, 
                   dset2$Insomnia, 
                   dset2$OCD,
                   main ="Mental health problem of reported individuals",
                   names = c("Anxiety", "Depression", "Insomnia", "OCD"),
                   col = "lightblue", 
                   notch = TRUE)    
print(boxplot1)


#SCATTER PLOTS
library(ggplot2)

#Anxiety
sctplot1<-ggplot(data= dset2, aes(x=dset2$Age, 
                         y=dset2$Anxiety)
)+geom_point()+geom_smooth(method = lm, se=FALSE)
print(sctplot1)
reg.mode1 <- lm(Anxiety ~ Age, 
                data = dset2)
coef(reg.mode1)

#Depression
sctplot2<-ggplot(data= dset2, aes(x=dset2$Age, 
                        y=dset2$Depression)
)+geom_point()+geom_smooth(method = lm, se=FALSE)
reg.mode2 <- lm(Depression ~ Age, 
                data = dset2)
print(sctplot2)
coef(reg.mode2)

#Insomnia
sctplot3<-ggplot(data= dset2, aes(x=dset2$Age, 
                        y=dset2$Insomnia)
)+geom_point()+geom_smooth(method = lm, se=FALSE)

reg.mode3 <- lm(Insomnia ~ Age, 
                data = dset2)
print(sctplot3)
coef(reg.mode3)

#OCD
sctplot4<-ggplot(data= dset2, aes(x=dset2$Age, 
                        y=dset2$OCD)
)+geom_point()+geom_smooth(method = lm, se=FALSE)

reg.mode4 <- lm(OCD ~ Age, 
                data = dset2)
print(sctplot4)
coef(reg.mode4)


#DENSITY PLOT
qq<-ggplot(dset2, aes(x = Age, fill = factor(Primary.streaming.service))) +
  geom_density() +
  facet_grid(Primary.streaming.service ~.)


