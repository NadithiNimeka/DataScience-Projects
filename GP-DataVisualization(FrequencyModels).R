#BARCHARTS2

#bar charts to frequency of different genres

freq1<-table(dset2$Frequency..Classical.)
barplot(freq1,
        main = "Frequency of Listening to Clssical Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,300),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg = levels(freq1))
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq1), ":", freq1), bty = "n", cex = 0.6)


freq2<-table(dset2$Frequency..Country.)
barplot(freq2,
        main = "Frequency of Listening to Country Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,350),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq1)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq2), ":", freq2), bty = "n", cex = 0.6,)

freq3<-table(dset2$Frequency..EDM.)
barplot(freq3,
        main = "Frequency of Listening to EDM",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,300),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq3)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq3), ":", freq3), bty = "n", cex = 0.6,)

freq4<-table(dset2$Frequency..Folk.)
barplot(freq4,
        main = "Frequency of Listening to Calssical Folks Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,300),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq4)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq4), ":", freq4), bty = "n", cex = 0.6,)

freq5<-table(dset2$Frequency..Gospel.)
barplot(freq5,
        main = "Frequency of Listening to Gospel Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,600),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq5)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq5), ":", freq5), bty = "n", cex = 0.6,)

freq6<-table(dset2$Frequency..Hip.hop.)
barplot(freq6,
        main = "Frequency of Listening to Hip Hop Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,250),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq6)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq6), ":", freq6), bty = "n", cex = 0.6,)
print(freq6)

freq7<-table(dset2$Frequency..Jazz.)
barplot(freq7,
        main = "Frequency of Listening to Jazz Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,260),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq7)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq7), ":", freq7), bty = "n", cex = 0.6,)
print(freq7)

freq8<-table(dset2$Frequency..K.pop.)
barplot(freq8,
        main = "Frequency of Listening to Calssical Kpop Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,450),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq8)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq8), ":", freq8), bty = "n", cex = 0.6,)
print(freq8)

freq9<-table(dset2$Frequency..Latin.)
barplot(freq9,
        main = "Frequency of Listening to Latin Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,260),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq9)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq9), ":", freq9), bty = "n", cex = 0.6,)
print(freq9)

freq10<-table(dset2$Frequency..Lofi.)
barplot(freq10,
        main = "Frequency of Listening to Lofi Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,260),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq10)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq10), ":", freq10), bty = "n", cex = 0.6,)
print(freq10)

freq11<-table(dset2$Frequency..Metal.)
barplot(freq11,
        main = "Frequency of Listening to Metal Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,300),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq11)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq11), ":", freq11), bty = "n", cex = 0.6,)
print(freq11)

freq12<-table(dset2$Frequency..Pop.)
barplot(freq12,
        main = "Frequency of Listening to Pop Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,300),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq12)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq12), ":", freq12), bty = "n", cex = 0.6,)
print(freq12)

freq13<-table(dset2$Frequency..R.B.)
barplot(freq13,
        main = "Frequency of Listening to R&B Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,260),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq13)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq13), ":", freq13), bty = "n", cex = 0.6,)
print(freq13)

freq14<-table(dset2$Frequency..Rap.)
barplot(freq14,
        main = "Frequency of Listening to Rap Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,260),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq14)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq14), ":", freq14), bty = "n", cex = 0.6,)
print(freq14)

freq15<-table(dset2$Frequency..Rock.)
barplot(freq15,
        main = "Frequency of Listening to Rap Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,350),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq15)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq15), ":", freq15), bty = "n", cex = 0.6,)
print(freq15)

freq16<-table(dset2$Frequency..Video.game.music.)
barplot(freq16,
        main = "Frequency of Listening to Video Game Music",
        xlab = "Frequency",
        ylab = "No. of Users",
        xlim = c(0,16),
        ylim = c(0,260),
        space = 2,
        width = 0.8,
        col = "skyblue",
        names.arg=levels(freq16)
)
legend("topright",y.intersp = .5, x.intersp = -5 , legend = paste(names(freq16), ":", freq16), bty = "n", cex = 0.6,)
print(freq16)
