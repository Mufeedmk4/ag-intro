pdf('RAP1_IAA_30M_REP1.junctionSaturation_plot.pdf')
x=c(5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100)
y=c(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3)
z=c(17,22,29,36,41,43,48,53,57,62,67,70,71,72,73,76,80,84,85,87)
w=c(14,19,26,33,38,40,45,50,54,59,64,67,68,69,70,73,77,81,82,84)
m=max(0,0,0)
n=min(0,0,0)
plot(x,z/1000,xlab='percent of total reads',ylab='Number of splicing junctions (x1000)',type='o',col='blue',ylim=c(n,m))
points(x,y/1000,type='o',col='red')
points(x,w/1000,type='o',col='green')
legend(5,0, legend=c("All junctions","known junctions", "novel junctions"),col=c("blue","red","green"),lwd=1,pch=1)
dev.off()
