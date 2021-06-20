pdf('RAP1_UNINDUCED_REP2.DupRate_plot.pdf')
par(mar=c(5,4,4,5),las=0)
seq_occ=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,67,68,69,70,71,72,73,74,75,77,78,79,80,81,82,83,85,86,87,88,90,91,92,93,95,96,99,100,101,105,112,117,118,120,122,135,142,143,146,151,157,171,186,213,261)
seq_uniqRead=c(27670,3374,1486,878,589,444,346,244,183,170,147,120,94,104,80,67,72,47,51,45,44,42,31,25,38,24,25,25,31,19,19,12,13,16,16,12,14,11,11,7,12,12,13,8,4,11,3,3,4,5,8,4,3,6,5,4,5,6,2,2,4,2,4,4,2,3,4,3,1,1,3,2,3,1,1,1,4,2,2,1,2,2,1,1,2,1,2,2,2,4,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
pos_occ=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,100,101,102,103,104,105,106,107,108,109,111,117,118,120,127,128,133,134,150,152,158,160,161,170,173,175,188,193,199,235,277)
pos_uniqRead=c(18682,3176,1352,828,571,424,315,256,223,191,148,139,93,95,78,80,94,52,62,51,51,42,37,38,36,29,24,32,16,27,24,16,15,22,22,18,10,12,11,15,15,11,10,10,15,12,7,7,8,8,6,14,8,6,3,2,9,5,8,5,3,3,4,3,2,6,2,3,5,2,3,3,4,1,5,2,2,3,2,2,3,3,1,2,1,1,1,1,2,1,1,2,2,1,2,2,3,1,2,1,1,2,2,2,3,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1)
plot(pos_occ,log10(pos_uniqRead),ylab='Number of Reads (log10)',xlab='Occurrence of read',pch=4,cex=0.8,col='blue',xlim=c(1,500),yaxt='n')
points(seq_occ,log10(seq_uniqRead),pch=20,cex=0.8,col='red')
ym=floor(max(log10(pos_uniqRead)))
legend(300,ym,legend=c('Sequence-based','Mapping-based'),col=c('blue','red'),pch=c(4,20))
axis(side=2,at=0:ym,labels=0:ym)
axis(side=4,at=c(log10(pos_uniqRead[1]),log10(pos_uniqRead[2]),log10(pos_uniqRead[3]),log10(pos_uniqRead[4])), labels=c(round(pos_uniqRead[1]*100/sum(pos_uniqRead*pos_occ)),round(pos_uniqRead[2]*100/sum(pos_uniqRead*pos_occ)),round(pos_uniqRead[3]*100/sum(pos_uniqRead*pos_occ)),round(pos_uniqRead[4]*100/sum(pos_uniqRead*pos_occ))))
mtext(4, text = "Reads %", line = 2)
dev.off()
