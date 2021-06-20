pdf('RAP1_UNINDUCED_REP1.junctionSaturation_plot.pdf')
x=c(5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100)
y=c(1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2)
z=c(4,10,11,16,21,22,27,29,31,35,35,38,41,43,44,47,48,48,49,53)
w=c(3,9,10,14,19,20,25,27,29,33,33,36,39,41,42,45,46,46,47,51)
m=max(0,0,0)
n=min(0,0,0)
plot(x,z/1000,xlab='percent of total reads',ylab='Number of splicing junctions (x1000)',type='o',col='blue',ylim=c(n,m))
points(x,y/1000,type='o',col='red')
points(x,w/1000,type='o',col='green')
legend(5,0, legend=c("All junctions","known junctions", "novel junctions"),col=c("blue","red","green"),lwd=1,pch=1)
dev.off()
