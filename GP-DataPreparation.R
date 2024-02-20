dset<-read.csv("C:\\Users\\user\\Downloads\\HGDNNimeka-10899185\\RGroupProject\\Dataset\\mxmh_survey_results.csv") 
summary(dset)

min(dset$BPM, na.rm = TRUE)
which.min(dset$BPM)

#Handling missing values
sum(is.na(dset$BPM))#count missing values in BPM column
mean(dset$BPM, na.rm = TRUE)#count the mean value of BPM Column

#Mean imputation
dset$BPM[is.na(dset$BPM)] <-as.integer(mean(dset$BPM, na.rm = TRUE))
sum(is.na(dset$BPM))



#Handling outliers
outliers <- boxplot(dset$BPM, plot = FALSE)$out
outliers

Bplot1 <- boxplot(dset$BPM,horizontal = TRUE, xlim=c(1,0), ylim=c(0,700), outwex = 0, boxwex = 0.2)#boxwex-to reduce the box size
Bplot1

max(dset$BPM, na.rm = TRUE)#find the outlier which is farthest away from 4th quartile
which.max(dset$BPM)
dset2<- dset[-645,]#Delete roW No.645

Bplot1 <- boxplot(dset2$BPM,xlim=c(1,0), ylim=c(0,700), outwex = 0, boxwex = 0.2)
Bplot1

dset2$BPM[which(dset2$BPM<55)] <- c(dset2$BPM[which(dset2$BPM<55)]+55)#identifying and adjusting Low outliers
outliers
dset2$BPM[which(dset2$BPM>192)] <- c(dset2$BPM[which(dset2$BPM>192)]-50)#identifying and adjusting high outliers
outliers

Bplot1 <- boxplot(dset2$BPM,xlim=c(1,0), ylim=c(0,700), outwex = 0, boxwex = 0.2)
Bplot1



#Encoding
#encoding1(primary streaming service)
stre_service <- dset2$Primary.streaming.service
#Keychart before encoding 
encoding_keychart <- data.frame(
  Original_Category = unique(stre_service))

#Label encoding
dset2$Primary.streaming.service<-as.numeric(factor(stre_service), levels=unique(stre_service))

#Keychart after encoding
encoding_keychart1 <- data.frame(
  Encoded_label = unique(stre_service),
  encoding_keychart)
print(encoding_keychart1)


#encoding2(fav.genre)
fav_genre <- dset2$Fav.genre

encoding_keychart <- data.frame(
  Original_Category = unique(fav_genre))

dset2$Fav.genre <- as.numeric(factor(fav_genre), levels=unique(fav_genre))

encoding_keychart1 <- data.frame(
  Encoded_label = unique(dset2$Fav.genre),
  encoding_keychart)
print(encoding_keychart1)

library(skimr)
skim(dset2)


barplot(table(dset2$Fav.genre),xlim=c(0,25), ylim=c(0,200))
barplot(table(dset$Primary.streaming.service),xlim=c(0,7), ylim=c(0,500))

Bplot2 <- boxplot(dset$Age, horizontal = TRUE, xlim=c(1,0), ylim=c(0,100), outwex = 0, boxwex = 0.2)
Bplot2

Bplot3 <- boxplot(dset$Hours.per.day, horizontal = TRUE, xlim=c(1,0), ylim=c(0,25), outwex = 0, boxwex = 0.2)
Bplot3

Bplot4 <- boxplot(dset$OCD, horizontal = TRUE, xlim=c(1,0), ylim=c(0,15), outwex = 0, boxwex = 0.2)
Bplot4

