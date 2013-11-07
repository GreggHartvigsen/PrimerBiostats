### R code from the book:
###
### A Primer in Biological Data Analysis and 
###         Visualization Using R
###            Gregg Hartvigsen
###       Columbia University Press
###                 2014
###          ISBN = 0231166990

# Below are "chunks" are pieces of R code in the
# book. They are in the order in which they appear.
# If you open this file in a web browser then you
# might highlight all the text, copy it, and then
# paste it into a new R script file in R or RStudio.
# You can then save it as primer.r or whatever you 
# want.
#
# Note that a few chunks have been removed because 
# they do not produce output seen in the book.


###################################################
### code chunk number 2: biostats.rnw:466-467
###################################################
2 + 3


###################################################
### code chunk number 3: biostats.rnw:484-492
###################################################
5-1 # Subtraction. Did you get 4?
2*3 # Multiplication
7/3 # Division
sqrt(9) # Use the sqrt() function to get the square root of 9
9^2 # 9 squared
log(3) # Natural logarithm of 3
log(3,10) # Log of 3 (base 10), or use log10(3)
exp(3) # This is e^3


###################################################
### code chunk number 4: biostats.rnw:507-517
###################################################
1:5 # create an array of integers from 1 to 5
a = c(1, 2.5, 3, 4, 3.5) # 5 numbers combined in an array
sum(a) # sum up all values in array "a"
length(a) # tells you how many numbers are in "a"
sum(a)/length(a) # this calculates the mean
summary(a) # the simplest of descriptive stats for "a"
a/5 # divide each value in "a" by 5
a[4] # returns the fourth element in array "a"
a[1:3] # returns the first three elements of array "a"
seq(1,10, by = 0.5) # sequence from 1 to 10 by 0.5


###################################################
### code chunk number 5: biostats.rnw:522-525
###################################################
rep(c("A","B","C"), times = 2) # entire array twice
rep(c("A","B","C"), each = 2) # each element twice
pi # a pre-defined constant


###################################################
### code chunk number 6: biostats.rnw:531-533
###################################################
p = c(1/2,1/4,1/4) # three proportions saved in an array
sum(p) # p should add to 1.0


###################################################
### code chunk number 7: curve.example
###################################################
curve(2*x^2 + 4*x - 7,-10,10)


###################################################
### code chunk number 8: biostats.rnw:551-552
###################################################
curve(2*x^2 + 4*x - 7,-10,10)


###################################################
### code chunk number 9: biostats.rnw:755-757
###################################################
males = c(1.72, 1.69, 1.70, 1.66) # heights in meters
females = c(1.55, 1.62, 1.58, 1.53)


###################################################
### code chunk number 10: biostats.rnw:762-764
###################################################
mean(males) # calculates the arithmetic mean
median(females) # calculates the median for continuous data


###################################################
### code chunk number 11: fig:hts.males.females.fig
###################################################
boxplot(males,females, names = c("Males","Females"), 
        xlab = "Gender",ylab = "Heights (m)", cex.lab = 1.5)


###################################################
### code chunk number 12: biostats.rnw:776-777
###################################################
boxplot(males,females, names = c("Males","Females"), 
        xlab = "Gender",ylab = "Heights (m)", cex.lab = 1.5)


###################################################
### code chunk number 13: biostats.rnw:802-804
###################################################
my.height = 68 # height in inches
my.height


###################################################
### code chunk number 14: biostats.rnw:809-811
###################################################
Gettysburg = "Four score and seven years ago...."
Gettysburg


###################################################
### code chunk number 15: biostats.rnw:816-818
###################################################
dog.mass = c(4.3, 6.7, 5.2, 3.7, 4.4) # mass of our 5 dogs
dog.mass # view and double-check the data


###################################################
### code chunk number 16: biostats.rnw:910-912
###################################################
S = "http://solarscience.msfc.nasa.gov/greenwch/spot_num.txt"
sun = read.table(S, header = T)  # sunspots/month data


###################################################
### code chunk number 17: fig:sunspots.fig
###################################################
plot(sun$SSN, xaxt = "n",type = "l", cex.lab = 1.5,
     xlab = "Year", 
     ylab = "Number of Spots")  # sunspot number per month
XA = seq(14,length(sun$SSN)+12,by = 120) # location of
    # January 1 for multiples of 10 years in this database
lab = seq(1750,2013,by = 10) # labels for x axis
axis(1,at = XA, labels = lab, las = 2) # make x axis 


###################################################
### code chunk number 18: biostats.rnw:936-937
###################################################
plot(sun$SSN, xaxt = "n",type = "l", cex.lab = 1.5,
     xlab = "Year", 
     ylab = "Number of Spots")  # sunspot number per month
XA = seq(14,length(sun$SSN)+12,by = 120) # location of
    # January 1 for multiples of 10 years in this database
lab = seq(1750,2013,by = 10) # labels for x axis
axis(1,at = XA, labels = lab, las = 2) # make x axis 


###################################################
### code chunk number 19: biostats.rnw:1007-1013
###################################################
a = 3.141592654 # pi
b = 3141592654 # pi x 10^9
round(a,2) # control number of decimal places displayed
signif(a,2) # this controls significant digits
round(b,2)
signif(b,2)


###################################################
### code chunk number 20: biostats.rnw:1028-1030
###################################################
males = c(1.72, 1.69, 1.70, 1.66)
females = c(1.55, 1.62, 1.58, 1.53)


###################################################
### code chunk number 21: biostats.rnw:1035-1037
###################################################
my.dat1 = data.frame(males,females)
my.dat1


###################################################
### code chunk number 22: biostats.rnw:1042-1043
###################################################
my.dat1$males


###################################################
### code chunk number 23: biostats.rnw:1048-1049
###################################################
summary(my.dat1)


###################################################
### code chunk number 24: biostats.rnw:1054-1059
###################################################
set.seed(100) # use 100 and we will have the same numbers
N = 1:10 # N is an array of 10 numbers (1,2,3,...9,10)
dat = rnorm(10) # create 10 random nums from
    # the standard normal distribution
trmt = rep(c("A","B","C","D","E"), each = 2) # our trmts


###################################################
### code chunk number 25: biostats.rnw:1064-1065
###################################################
my.dat2 = data.frame(N,trmt,dat) # creates a dataframe


###################################################
### code chunk number 26: biostats.rnw:1070-1071
###################################################
head(my.dat2) # just the first six lines of my.dat2


###################################################
### code chunk number 27: biostats.rnw:1081-1085
###################################################
males = c(1.72, 1.69, 1.70, 1.66)
females = c(1.55, 1.62, 1.58, 1.53)
my.dat = data.frame(males,females) # must be a dataframe
my.dat # unstacked


###################################################
### code chunk number 28: biostats.rnw:1090-1092
###################################################
stacked.dat = stack(my.dat)
stacked.dat


###################################################
### code chunk number 29: biostats.rnw:1097-1098
###################################################
names(stacked.dat) = c("height","gender")


###################################################
### code chunk number 30: biostats.rnw:1103-1104
###################################################
names(stacked.dat)


###################################################
### code chunk number 31: biostats.rnw:1111-1112
###################################################
subset(stacked.dat, gender == "males")


###################################################
### code chunk number 32: biostats.rnw:1117-1118
###################################################
subset(stacked.dat, height >= 1.6)


###################################################
### code chunk number 33: biostats.rnw:1123-1125
###################################################
temp.dat = subset(stacked.dat, height >= 1.6)
temp.dat$height


###################################################
### code chunk number 34: biostats.rnw:1131-1134
###################################################
F.dat = subset(stacked.dat, gender == "females")$height 
mean(F.dat)
sd(F.dat)


###################################################
### code chunk number 35: biostats.rnw:1145-1147
###################################################
N = 1:50 # an array of integers from 1 to 50
S = sample(N)


###################################################
### code chunk number 36: biostats.rnw:1154-1155
###################################################
S[1:10] # the ID for the first 10 individuals


###################################################
### code chunk number 37: biostats.rnw:1160-1161
###################################################
S[11:20]


###################################################
### code chunk number 38: biostats.rnw:1166-1167
###################################################
matrix(S,ncol = 5)


###################################################
### code chunk number 39: biostats.rnw:1177-1178
###################################################
sort(S[11:20])


###################################################
### code chunk number 40: biostats.rnw:1183-1184
###################################################
sort(S[11:20],decreasing = TRUE)


###################################################
### code chunk number 41: biostats.rnw:1191-1193
###################################################
S # the randomized list of numbers
order(S) # the indices of the numbers; lowest to highest


###################################################
### code chunk number 42: biostats.rnw:1201-1203
###################################################
P = c("Bob","Sally","Fred","Jane") # 4 people
P # just to see our array P before sorting


###################################################
### code chunk number 43: biostats.rnw:1208-1209
###################################################
sort(P)


###################################################
### code chunk number 44: biostats.rnw:1214-1215
###################################################
order(P)


###################################################
### code chunk number 45: biostats.rnw:1220-1221
###################################################
P[order(P)] # Note: Fred is 2nd in alphabetized list


###################################################
### code chunk number 46: biostats.rnw:1228-1233
###################################################
trmt = c("A","B","A","B")
males = c(1.72, 1.69, 1.70, 1.66)
females = c(1.55, 1.62, 1.58, 1.53)
my.dat = data.frame(trmt,males,females) # creates a dataframe
my.dat


###################################################
### code chunk number 47: biostats.rnw:1238-1239
###################################################
my.dat[order(my.dat$trmt),]


###################################################
### code chunk number 48: biostats.rnw:1344-1346
###################################################
x = c(5,3,6,7,4)
mean(x)


###################################################
### code chunk number 49: biostats.rnw:1358-1361
###################################################
vals = c(1,2,3)
weights = c(7,3,5) # 7 ones, 3 twos, and 5 threes
weighted.mean(vals,weights)


###################################################
### code chunk number 50: biostats.rnw:1370-1372
###################################################
median(c(2,3,4,5,8)) # 4 is the middle value
median(c(2,3,4,8)) # the middle lies between 3 and 4


###################################################
### code chunk number 51: biostats.rnw:1397-1405
###################################################
G = c(rep(4,11),rep(3.7,15),rep(3.3,8),3,3,3,2,1,1,0)
B = c(-0.3,0,0.3,0.7,1,1.3,1.7,2,2.3,2.7,3,3.3,3.7,4)
a = hist(G, breaks = B, xlab = "Points Received", 
     ylab = "Frequency", cex.lab = 1.5, main = "",
     freq = T, xaxt = "n",ylim = c(0,20))
axis(side=1,at=a$mids,labels=B[2:14])
abline(v=mean(G),lwd = 3)
abline(v=median(G), lwd = 3, lty = 2)


###################################################
### code chunk number 52: biostats.rnw:1422-1427
###################################################
set.seed(100) # do this to have the same data
dat.raw = sample(1:10, 500, replace = T) # get 500 random 
# vals btwn 1 and 10
dat.table = table(dat.raw) # cross tabulation for the data
dat.table # here are the data, ordered up by frequency


###################################################
### code chunk number 53: biostats.rnw:1432-1433
###################################################
as.numeric(names(dat.table)[which.max(dat.table)])


###################################################
### code chunk number 54: biostats.rnw:1438-1442
###################################################
set.seed(100) # set random seed to get the same answer
a = hist(rnorm(1000)) # store data from hist() in "a"
my.mode = a$mids[which(a$counts==max(a$counts))]
cat("The mode is the bin centered on", my.mode,"\n")


###################################################
### code chunk number 55: biostats.rnw:1456-1459
###################################################
set.seed(100) # set the random seed
x = rnorm(1000) # 1000 nums values from the "standard 
# normal distribution"


###################################################
### code chunk number 56: biostats.rnw:1468-1470
###################################################
range(x) # returns the smallest and largest values
diff(range(x)) # for this, diff() gives us what we want


###################################################
### code chunk number 57: biostats.rnw:1479-1480
###################################################
sd(x) # sd for the standard deviation


###################################################
### code chunk number 58: biostats.rnw:1495-1497
###################################################
sd(x)^2
var(x)


###################################################
### code chunk number 59: biostats.rnw:1506-1508
###################################################
SEM = sd(x)/sqrt(length(x)) 
SEM


###################################################
### code chunk number 60: biostats.rnw:1519-1522
###################################################
n = length(x) # the size of a sample
CI95 = qt(0.975, df = n - 1)*SEM
CI95


###################################################
### code chunk number 61: biostats.rnw:1536-1537
###################################################
IQR(x) # returns the interquartile range of the x array


###################################################
### code chunk number 62: biostats.rnw:1562-1563
###################################################
library(UsingR)


###################################################
### code chunk number 63: fig:simple.eda.norm.fig
###################################################
simple.eda(rnorm(1000))


###################################################
### code chunk number 64: biostats.rnw:1573-1574
###################################################
simple.eda(rnorm(1000))


###################################################
### code chunk number 65: biostats.rnw:1586-1591
###################################################
set.seed(10)
x1 = rnorm(1000) # 1000 values from standard normal dist.
x2 = runif(1000) # 1000 values from uniform dist.
x3 = rgamma(1000,2,1) # 1000 values from a gamma distribution
x4 = c(rep(3,10),1,2,4,5) # leptokurtic distribution


###################################################
### code chunk number 66: lab.four.data.sets
###################################################
par(mfrow = c(2,2)) # create 2 x 2 graphics panel
hist(x1, main = "Normal Distribution")
hist(x2, main = "Uniform Distribution")
hist(x3, main = "Gamma Distribution")
hist(x4, main = "Leptokurtic Distribution",breaks = 0:5)
par(mfrow = c(1,1)) # return the graphics window to 1 pane


###################################################
### code chunk number 67: biostats.rnw:1607-1608
###################################################
par(mfrow = c(2,2)) # create 2 x 2 graphics panel
hist(x1, main = "Normal Distribution")
hist(x2, main = "Uniform Distribution")
hist(x3, main = "Gamma Distribution")
hist(x4, main = "Leptokurtic Distribution",breaks = 0:5)
par(mfrow = c(1,1)) # return the graphics window to 1 pane


###################################################
### code chunk number 68: biostats.rnw:1617-1621
###################################################
shapiro.test(x1)$p.value # large p -> fail to reject Ho
shapiro.test(x2)$p.value # small p -> reject Ho
shapiro.test(x3)$p.value # small p -> reject Ho
shapiro.test(x4)$p.value # small p -> reject Ho


###################################################
### code chunk number 69: biostats.rnw:1628-1629
###################################################
library(e1071)


###################################################
### code chunk number 70: biostats.rnw:1632-1636
###################################################
skewness(x1)
skewness(x2)
skewness(x3)
skewness(x4)


###################################################
### code chunk number 71: biostats.rnw:1644-1648
###################################################
kurtosis(x1)
kurtosis(x2)
kurtosis(x3)
kurtosis(x4)


###################################################
### code chunk number 72: biostats.rnw:1707-1708
###################################################
x = runif(100)+1 # creates 100 random values (1 <= x <= 2)


###################################################
### code chunk number 73: biostats.rnw:1713-1714
###################################################
x[36] = 153 # makes the 36th value erroneously 153


###################################################
### code chunk number 74: biostats.rnw:1719-1720
###################################################
which(x > 2) # find index of number(s) that are > 2


###################################################
### code chunk number 75: biostats.rnw:1726-1727
###################################################
x[36]


###################################################
### code chunk number 76: biostats.rnw:1732-1733
###################################################
x[36] = 1.53


###################################################
### code chunk number 77: biostats.rnw:1738-1740
###################################################
x = x[-36] # -36 means removes the 36th value, then copies 
           # the remaining values back into x


###################################################
### code chunk number 78: fig:lognormal
###################################################
set.seed(10)
x1 = exp(rnorm(100, mean = 5, sd = 0.5)) 
log.x1 = log(x1) # the natural logarithm of the x1 data
par(mfrow = c(1,2))
hist(x1, xlab = "x1 data", main = "",ylim = c(0,30))
hist(log.x1, xlab = "log(x1) data", main = "", 
     xlim = c(3.5,6.5),ylim = c(0,30))


###################################################
### code chunk number 79: biostats.rnw:1764-1765
###################################################
set.seed(10)
x1 = exp(rnorm(100, mean = 5, sd = 0.5)) 
log.x1 = log(x1) # the natural logarithm of the x1 data
par(mfrow = c(1,2))
hist(x1, xlab = "x1 data", main = "",ylim = c(0,30))
hist(log.x1, xlab = "log(x1) data", main = "", 
     xlim = c(3.5,6.5),ylim = c(0,30))


###################################################
### code chunk number 80: biostats.rnw:1775-1777
###################################################
shapiro.test(x1) # these are NOT normally distributed
shapiro.test(log.x1) # transformed -> normally distributed


###################################################
### code chunk number 81: biostats.rnw:1896-1900
###################################################
set.seed(100) 
x = rnorm(100, mean = 5) # 100 random nums, mean = 5, sd = 1
y = rnorm(100, mean = 6) # 100 random nums, mean = 6, sd = 1 
z = rnorm(100, mean = 8) # 100 random nums, mean = 8, sd = 1


###################################################
### code chunk number 82: scatterplot.mods
###################################################
par(mfrow = c(1,2)) # make graph window 1 row and 2 columns
my.dat = c(5,3,6,2,1) # here are my data
plot(my.dat) # left plot with no graphics parameters
plot(my.dat, xlim = c(0,10), ylim = c(0,10), 
    xlab = "My x-axis label", ylab = "My y-axis label", 
    main = "My Custom Title", pch = 16, cex = 1.2,
    cex.lab = 1.5) # a professional-looking graph!


###################################################
### code chunk number 83: biostats.rnw:1919-1920
###################################################
par(mfrow = c(1,2)) # make graph window 1 row and 2 columns
my.dat = c(5,3,6,2,1) # here are my data
plot(my.dat) # left plot with no graphics parameters
plot(my.dat, xlim = c(0,10), ylim = c(0,10), 
    xlab = "My x-axis label", ylab = "My y-axis label", 
    main = "My Custom Title", pch = 16, cex = 1.2,
    cex.lab = 1.5) # a professional-looking graph!


###################################################
### code chunk number 84: fig:hist.fig
###################################################
par(mfrow = c(1,2))
hist(x, cex.lab = 1.5, main = "")
abline(v = mean(x),lwd = 5)
hist(x, cex.lab = 1.5, main = "", breaks = 25)
abline(v = mean(x),lwd = 5)
par(mfrow = c(1,1))


###################################################
### code chunk number 85: biostats.rnw:1947-1948
###################################################
par(mfrow = c(1,2))
hist(x, cex.lab = 1.5, main = "")
abline(v = mean(x),lwd = 5)
hist(x, cex.lab = 1.5, main = "", breaks = 25)
abline(v = mean(x),lwd = 5)
par(mfrow = c(1,1))


###################################################
### code chunk number 86: fig:box.fig
###################################################
boxplot(x,y,z,names = c("Control","Low","High"), 
        xlab = "Fertilizer Treatment",
        ylab = "Tree Height (m)", 
        cex.lab = 1.5,ylim = c(0,max(c(x,y,z))))


###################################################
### code chunk number 87: biostats.rnw:1986-1987
###################################################
boxplot(x,y,z,names = c("Control","Low","High"), 
        xlab = "Fertilizer Treatment",
        ylab = "Tree Height (m)", 
        cex.lab = 1.5,ylim = c(0,max(c(x,y,z))))


###################################################
### code chunk number 88: barplot.trees
###################################################
Ht = c(mean(x),mean(y),mean(z))
barplot(Ht,
        xlab = "Fertilizer Treatment",
        ylab = "Tree Height (m)", 
names = c("Low","Medium","High"), cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 89: biostats.rnw:2012-2013
###################################################
Ht = c(mean(x),mean(y),mean(z))
barplot(Ht,
        xlab = "Fertilizer Treatment",
        ylab = "Tree Height (m)", 
names = c("Low","Medium","High"), cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 90: barplots.compared
###################################################
a = rnorm(1000,mean = 100,sd = 1)
b = rnorm(1000, mean = 100, sd = 10)
par(mfrow = c(1,2))
barplot(c(mean(a),mean(b)),ylim = c(0,200), 
  xlab = "Treatments", ylab = "Biomass (g)", 
  names = c("A","B"),cex.lab = 1.5)
abline(h=0)
boxplot(a,b, ylab = "Biomass (g)",names = c("A","B"),
  ylim = c(60, 140), cex.lab = 1.5, xlab = "Treatments")
par(mfrow = c(1,1))


###################################################
### code chunk number 91: biostats.rnw:2039-2040
###################################################
a = rnorm(1000,mean = 100,sd = 1)
b = rnorm(1000, mean = 100, sd = 10)
par(mfrow = c(1,2))
barplot(c(mean(a),mean(b)),ylim = c(0,200), 
  xlab = "Treatments", ylab = "Biomass (g)", 
  names = c("A","B"),cex.lab = 1.5)
abline(h=0)
boxplot(a,b, ylab = "Biomass (g)",names = c("A","B"),
  ylim = c(60, 140), cex.lab = 1.5, xlab = "Treatments")
par(mfrow = c(1,1))


###################################################
### code chunk number 92: biostats.rnw:2064-2067
###################################################
males = c(36.2,28.9) # first is biology, then non-bio majors
females = c(36.3,29.5)
M = matrix(c(males,females),byrow = T, nrow = 2)


###################################################
### code chunk number 93: twoway.barplot
###################################################
par(mfrow = c(1,2)) # graphics panel with 1 row, 2 columns
barplot(M,beside = T, names = c("Biology","Non-Biology"),
        ylim = c(0,60), xlab = "Major", cex.lab = 1.5, 
        ylab = "Mean MCAT Score",
        legend.text = c("Males","Females"))
abline(h=0)
# Alternatively,
bio = c(36.2,36.3) # first males, then females
non.bio = c(28.9,29.5)
M = matrix(c(bio,non.bio),byrow = T, nrow = 2)
barplot(M,beside = T, names = c("Males","Females"),
        ylim = c(0,60), xlab = "Gender",
        cex.lab = 1.5, ylab = "Mean MCAT Score",
        legend.text = c("Biology","Non-Biology"))
abline(h=0)


###################################################
### code chunk number 94: biostats.rnw:2094-2095
###################################################
par(mfrow = c(1,2)) # graphics panel with 1 row, 2 columns
barplot(M,beside = T, names = c("Biology","Non-Biology"),
        ylim = c(0,60), xlab = "Major", cex.lab = 1.5, 
        ylab = "Mean MCAT Score",
        legend.text = c("Males","Females"))
abline(h=0)
# Alternatively,
bio = c(36.2,36.3) # first males, then females
non.bio = c(28.9,29.5)
M = matrix(c(bio,non.bio),byrow = T, nrow = 2)
barplot(M,beside = T, names = c("Males","Females"),
        ylim = c(0,60), xlab = "Gender",
        cex.lab = 1.5, ylab = "Mean MCAT Score",
        legend.text = c("Biology","Non-Biology"))
abline(h=0)


###################################################
### code chunk number 95: fig:sp2D.fig
###################################################
par(mfrow = c(1,2))
set.seed(2)
x = runif(10)
y = runif(10)
plot(x,y, pch = 16, xlab = "X Variable", 
  ylab = "Response Variable", cex.lab = 1.5)
# Here are some data that exhibit a relationship
x = 1:10
delta = (runif(10) - 0.5) * 10 # random noise
y = 3*x + 2 + delta
plot(x,y, pch = 16, xlab = "X Variable", xlim = c(0,10),
     ylim = c(0,40), ylab = "Response Variable", 
     cex.lab = 1.5)


###################################################
### code chunk number 96: biostats.rnw:2128-2129
###################################################
par(mfrow = c(1,2))
set.seed(2)
x = runif(10)
y = runif(10)
plot(x,y, pch = 16, xlab = "X Variable", 
  ylab = "Response Variable", cex.lab = 1.5)
# Here are some data that exhibit a relationship
x = 1:10
delta = (runif(10) - 0.5) * 10 # random noise
y = 3*x + 2 + delta
plot(x,y, pch = 16, xlab = "X Variable", xlim = c(0,10),
     ylim = c(0,40), ylab = "Response Variable", 
     cex.lab = 1.5)


###################################################
### code chunk number 97: biostats.rnw:2153-2156
###################################################
N = 20 # number of individuals in sample
time1 = rnorm(N, mean = 3)
time2 = rnorm(N, mean = 7)


###################################################
### code chunk number 98: fig.bumpchart
###################################################
plot(0, xlim = c(0.75,2.25),ylim = c(0,10),
     type = "n",xaxt = "n", xlab = "Time", 
     ylab = "Measurement", cex.lab = 1.5)
axis(1,at = c(1,2),labels = c("Before","After"), 
     cex.axis = 1.25)
for (i in 1:length(time1)) { # add the lines one at a time
  lines(c(1,2),c(time1[i],time2[i]),lty = 1) 
}
points(rep(1,length(time1)),time1, pch = 16, cex = 1.5)
points(rep(2,length(time2)),time2, pch = 17, cex = 1.5)


###################################################
### code chunk number 99: biostats.rnw:2175-2176
###################################################
plot(0, xlim = c(0.75,2.25),ylim = c(0,10),
     type = "n",xaxt = "n", xlab = "Time", 
     ylab = "Measurement", cex.lab = 1.5)
axis(1,at = c(1,2),labels = c("Before","After"), 
     cex.axis = 1.25)
for (i in 1:length(time1)) { # add the lines one at a time
  lines(c(1,2),c(time1[i],time2[i]),lty = 1) 
}
points(rep(1,length(time1)),time1, pch = 16, cex = 1.5)
points(rep(2,length(time2)),time2, pch = 17, cex = 1.5)


###################################################
### code chunk number 100: fig.pie.fig
###################################################
x1 = c(10,20,30,40)
x2 = c(5,25,35,35)
my.dat = matrix(c(x1,x2),nrow = 2,byrow = T)
my.col = gray(seq(0,1.0,length=4))
layout(matrix(c(1,2,3,3), 2, 2, byrow = TRUE)) # set layout
pie(my.dat[1,], col = my.col,radius = 1,
    main = "Pie Chart 1")
pie(my.dat[2,], col = my.col,radius = 1,
    main = "Pie Chart 2")
leg.txt = c("Pie 1 data","Pie 2 data")
barplot(my.dat,beside = T, ylim = c(0,50), names = 1:4,
       col = gray.colors(2), ylab = "Height (cm)",
       xlab = "Groups", cex.lab = 1.5, main = "Barplot")
legend("topleft",leg.txt, fill = gray.colors(2))
abline(h=0)


###################################################
### code chunk number 101: biostats.rnw:2211-2212
###################################################
x1 = c(10,20,30,40)
x2 = c(5,25,35,35)
my.dat = matrix(c(x1,x2),nrow = 2,byrow = T)
my.col = gray(seq(0,1.0,length=4))
layout(matrix(c(1,2,3,3), 2, 2, byrow = TRUE)) # set layout
pie(my.dat[1,], col = my.col,radius = 1,
    main = "Pie Chart 1")
pie(my.dat[2,], col = my.col,radius = 1,
    main = "Pie Chart 2")
leg.txt = c("Pie 1 data","Pie 2 data")
barplot(my.dat,beside = T, ylim = c(0,50), names = 1:4,
       col = gray.colors(2), ylab = "Height (cm)",
       xlab = "Groups", cex.lab = 1.5, main = "Barplot")
legend("topleft",leg.txt, fill = gray.colors(2))
abline(h=0)


###################################################
### code chunk number 102: three.histograms
###################################################
x1 = rnorm(20, mean = 7)
x2 = rnorm(20, mean = 8)
x3 = rnorm(20, mean = 9)
# min() gets smallest value; floor() rounds down
xmin = floor(min(c(x1,x2,x3))) 
# max gets highest value; ceiling() rounds up
xmax = ceiling(max(c(x1,x2,x3))) 
par(mfrow = c(3,1)) # set graphic window: 3 rows, 1 col
hist(x1,xlim = c(xmin,xmax))
hist(x2,xlim = c(xmin,xmax))
hist(x3,xlim = c(xmin,xmax))
par(mfrow = c(1,1)) # reset the graphics window


###################################################
### code chunk number 103: biostats.rnw:2268-2269
###################################################
x1 = rnorm(20, mean = 7)
x2 = rnorm(20, mean = 8)
x3 = rnorm(20, mean = 9)
# min() gets smallest value; floor() rounds down
xmin = floor(min(c(x1,x2,x3))) 
# max gets highest value; ceiling() rounds up
xmax = ceiling(max(c(x1,x2,x3))) 
par(mfrow = c(3,1)) # set graphic window: 3 rows, 1 col
hist(x1,xlim = c(xmin,xmax))
hist(x2,xlim = c(xmin,xmax))
hist(x3,xlim = c(xmin,xmax))
par(mfrow = c(1,1)) # reset the graphics window


###################################################
### code chunk number 104: matrix.scatter
###################################################
x = data.frame(x1,x2,x3)
pairs(x)


###################################################
### code chunk number 105: biostats.rnw:2285-2286
###################################################
x = data.frame(x1,x2,x3)
pairs(x)


###################################################
### code chunk number 106: biostats.rnw:2456-2457
###################################################
power.t.test(delta = 30, sd = 25, power = 0.9)


###################################################
### code chunk number 107: biostats.rnw:2470-2471
###################################################
sample(1:10,5) # from the array 1-10, randomly choose 5


###################################################
### code chunk number 108: fig:onesamplet.fig
###################################################
S = c(1370, 1290, 1250, 1320, 1280, 1250, 1370, 1340, 1330,
      1280, 1210, 1390, 1180, 1290, 1300, 1300, 1250, 1250,
      1310, 1360)
you = 1330
simple.eda(S)


###################################################
### code chunk number 109: biostats.rnw:2603-2604
###################################################
S = c(1370, 1290, 1250, 1320, 1280, 1250, 1370, 1340, 1330,
      1280, 1210, 1390, 1180, 1290, 1300, 1300, 1250, 1250,
      1310, 1360)
you = 1330
simple.eda(S)


###################################################
### code chunk number 110: biostats.rnw:2613-2614
###################################################
shapiro.test(S)$p.value


###################################################
### code chunk number 111: biostats.rnw:2619-2620
###################################################
t.test(S, mu = you) # mu value tested against sample


###################################################
### code chunk number 112: fig:onesamplebox.fig
###################################################
boxplot(S, ylab = "Combined SAT Scores", cex.lab = 1.5)
abline(h=you, lty = 2, lwd = 2) # horiz. ref. at score=1250


###################################################
### code chunk number 113: biostats.rnw:2634-2635
###################################################
boxplot(S, ylab = "Combined SAT Scores", cex.lab = 1.5)
abline(h=you, lty = 2, lwd = 2) # horiz. ref. at score=1250


###################################################
### code chunk number 114: biostats.rnw:2647-2651
###################################################
T = t.test(S, mu = you, alt = "l") # alternative hypothesis
                    # is that the sample is greater than mu
T$statistic # report the t-value
T$p.value # report the p-value


###################################################
### code chunk number 115: biostats.rnw:2667-2671
###################################################
friends = c(1340, 1540, 1310, 1270, 1340, 1300, 1330, 1540,
            1540, 1320)
you = 1300
shapiro.test(friends)


###################################################
### code chunk number 116: biostats.rnw:2676-2677
###################################################
wilcox.test(friends, mu = you) # mu tested against the sample


###################################################
### code chunk number 117: biostats.rnw:2689-2691
###################################################
before = c(6.0, 5.8, 5.7, 5.5, 5.9, 5.2)
after = c(2.1, 3.6, 2.8, 2.6, 4.2, 2.3)


###################################################
### code chunk number 118: before.after
###################################################
boxplot(before,after, names = c("Before","After"),
      xlab = "Training", ylab = "Completion Time (minutes)", 
      cex.lab = 1.5)


###################################################
### code chunk number 119: biostats.rnw:2705-2706
###################################################
boxplot(before,after, names = c("Before","After"),
      xlab = "Training", ylab = "Completion Time (minutes)", 
      cex.lab = 1.5)


###################################################
### code chunk number 120: biostats.rnw:2718-2720
###################################################
diff = after - before # create a single, new variable of diffs
shapiro.test(diff) # test this single sample for normality


###################################################
### code chunk number 121: chimps.before.after
###################################################
boxplot(diff, ylim = c(-4,1), cex.lab = 1.5,
        ylab = "Change in Learning Time (Minutes)")
abline(h = 0, lty = 3, lwd = 3)


###################################################
### code chunk number 122: biostats.rnw:2734-2735
###################################################
boxplot(diff, ylim = c(-4,1), cex.lab = 1.5,
        ylab = "Change in Learning Time (Minutes)")
abline(h = 0, lty = 3, lwd = 3)


###################################################
### code chunk number 123: biostats.rnw:2745-2746
###################################################
t.test(after, before, paired = TRUE, alt = "l") 


###################################################
### code chunk number 124: biostats.rnw:2755-2757
###################################################
before = c(75, 53, 78, 89, 96, 86, 69, 87, 73, 87)
after = c(124, 103, 126, 193, 181, 122, 120, 197, 127, 146)


###################################################
### code chunk number 125: biostats.rnw:2761-2762
###################################################
shapiro.test(after-before)$p.value 


###################################################
### code chunk number 126: biostats.rnw:2767-2768
###################################################
wilcox.test(before,after,paired = TRUE)


###################################################
### code chunk number 127: biostats.rnw:2784-2788
###################################################
cont = c(64.7, 86.6, 67.1, 62.5, 75.1, 83.8, 
71.7, 83.4, 90.3, 82.7)
fert = c(110.3, 130.4, 114.0, 135.7, 129.9,  
98.2, 109.4, 131.4, 127.9, 125.7)


###################################################
### code chunk number 128: fig.fert.cont
###################################################
boxplot(cont,fert, names = c("Control","Fertilizer"), 
        xlab = "Treatment", ylab = "Plant Height (cm)", 
        cex.lab = 1.5)


###################################################
### code chunk number 129: biostats.rnw:2802-2803
###################################################
boxplot(cont,fert, names = c("Control","Fertilizer"), 
        xlab = "Treatment", ylab = "Plant Height (cm)", 
        cex.lab = 1.5)


###################################################
### code chunk number 130: biostats.rnw:2813-2815
###################################################
shapiro.test(cont)$p.value # normal?
shapiro.test(fert)$p.value # normal?


###################################################
### code chunk number 131: biostats.rnw:2820-2821
###################################################
var.test(cont,fert)


###################################################
### code chunk number 132: biostats.rnw:2827-2828
###################################################
t.test(cont,fert,alt = "l", var.equal = TRUE)


###################################################
### code chunk number 133: biostats.rnw:2838-2842
###################################################
A = c(87.1, 86.4, 80.3, 79.4, 85.7, 86.6, 70.5, 
      80.8, 86.3, 70.7)
B = c(103.9, 103.6, 109.7, 108.6, 102.3, 103.4, 
      119.5, 109.2, 103.7, 118.3)


###################################################
### code chunk number 134: fig:two-tailed-two-sample-non-normal.fig
###################################################
boxplot(A,B, names = c("Species A","Species B"),
        ylab = "Plant Height (cm)", cex.lab = 1.5)


###################################################
### code chunk number 135: biostats.rnw:2855-2856
###################################################
boxplot(A,B, names = c("Species A","Species B"),
        ylab = "Plant Height (cm)", cex.lab = 1.5)


###################################################
### code chunk number 136: biostats.rnw:2867-2869
###################################################
shapiro.test(A)$p.value # normal?
shapiro.test(B)$p.value # normal?


###################################################
### code chunk number 137: biostats.rnw:2874-2875
###################################################
wilcox.test(A,B)


###################################################
### code chunk number 138: biostats.rnw:2965-2970
###################################################
Low = c(52.3, 48.0, 39.3, 50.8, 53.3, 45.1)
Med = c(50.4, 53.8, 53.4, 58.1, 56.7, 61.2)
High = c(66.3, 59.9, 59.9, 61.3, 58.3, 59.4)
my.fish.dat = data.frame(Low,Med,High)
my.fish.dat = stack(my.fish.dat)


###################################################
### code chunk number 139: biostats.rnw:2975-2976
###################################################
names(my.fish.dat) = c("Mass","Trmt")


###################################################
### code chunk number 140: one.way.boxplot
###################################################
boxplot(Low,Med,High, names = c("Low","Medium","High"),
        xlab = "Feeding Rate", ylab = "Fish Mass (g)",
        cex.lab = 1.5)


###################################################
### code chunk number 141: biostats.rnw:2989-2990
###################################################
boxplot(Low,Med,High, names = c("Low","Medium","High"),
        xlab = "Feeding Rate", ylab = "Fish Mass (g)",
        cex.lab = 1.5)


###################################################
### code chunk number 142: biostats.rnw:3000-3006
###################################################
my.fish.dat$Trmt = factor(my.fish.dat$Trmt, 
        levels = c("Low","Med","High"))
boxplot(my.fish.dat$Mass ~ my.fish.dat$Trmt,
        names = c("Low","Medium","High"),
        xlab = "Feeding Rate", ylab = "Fish Mass (g)",
        cex.lab = 1.5)


###################################################
### code chunk number 143: biostats.rnw:3011-3014
###################################################
shapiro.test(Low)$p.value
shapiro.test(Med)$p.value
shapiro.test(High)$p.value


###################################################
### code chunk number 144: biostats.rnw:3021-3022
###################################################
my.aov = aov(my.fish.dat$Mass~my.fish.dat$Trmt)


###################################################
### code chunk number 145: biostats.rnw:3028-3029
###################################################
summary(my.aov)


###################################################
### code chunk number 146: biostats.rnw:3040-3041
###################################################
TukeyHSD(my.aov)


###################################################
### code chunk number 147: biostats.rnw:3055-3061
###################################################
A = c(58.4, 55.9, 53.8, 53.8, 53.5, 58.7, 52.9, 
      57.5, 58.5, 53.3)
B = c(70.9, 74.9, 70.6, 71.9, 71.0, 72.2, 74.5, 
      62.0, 69.6, 60.2)
C = c(70.3, 72.2, 71.6, 71.5, 73.3, 72.2, 77.7, 
      77.5, 73.3, 71.7)


###################################################
### code chunk number 148: kruskal.wallis.fig
###################################################
boxplot(A,B,C,names = c("A","B","C"), 
        ylab = "Tibia Length (mm)",
        xlab = "Species",cex.lab = 1.5)


###################################################
### code chunk number 149: biostats.rnw:3074-3075
###################################################
boxplot(A,B,C,names = c("A","B","C"), 
        ylab = "Tibia Length (mm)",
        xlab = "Species",cex.lab = 1.5)


###################################################
### code chunk number 150: biostats.rnw:3086-3089
###################################################
shapiro.test(A)$p.value # normal?
shapiro.test(B)$p.value # normal?
shapiro.test(C)$p.value # normal?


###################################################
### code chunk number 151: biostats.rnw:3096-3099
###################################################
my.dat = data.frame(A,B,C)
my.dat = stack(my.dat)
kruskal.test(values ~ ind, data = my.dat)


###################################################
### code chunk number 152: biostats.rnw:3168-3172
###################################################
LW.LN = c(3.84,4.47,4.45,4.17,5.41,3.82,3.83,4.67)
LW.HN = c(8.84,6.54,7.60,7.22,7.63,9.24,7.89,8.17)
HW.LN = c(7.57,8.67,9.13,10.02,8.74,8.70,10.62,8.23)
HW.HN = c(16.42,14.45,15.48,15.72,17.01,15.53,16.30,15.58)


###################################################
### code chunk number 153: biostats.rnw:3177-3180
###################################################
water = rep(c("LW","HW"), each = 16)
nutr = rep(c("LN","HN"), each = 8, 2)
plant.mass = c(LW.LN,LW.HN,HW.LN,HW.HN) # combine the data


###################################################
### code chunk number 154: biostats.rnw:3185-3187
###################################################
water
nutr


###################################################
### code chunk number 155: biostats.rnw:3192-3193
###################################################
P.dat = data.frame(water,nutr,plant.mass)


###################################################
### code chunk number 156: biostats.rnw:3199-3200
###################################################
head(P.dat) # view the first 6 rows


###################################################
### code chunk number 157: two.way.boxplot
###################################################
boxplot(P.dat$plant.mass ~ P.dat$water * P.dat$nutr, 
        ylab = "Biomass (g)", xlab = "Treatment", 
        cex.lab = 1.5)


###################################################
### code chunk number 158: biostats.rnw:3215-3216
###################################################
boxplot(P.dat$plant.mass ~ P.dat$water * P.dat$nutr, 
        ylab = "Biomass (g)", xlab = "Treatment", 
        cex.lab = 1.5)


###################################################
### code chunk number 159: biostats.rnw:3228-3230
###################################################
P.dat$plant.mass[P.dat$water == "LW" & 
                   P.dat$nutr == "LN"]


###################################################
### code chunk number 160: biostats.rnw:3237-3245
###################################################
shapiro.test(P.dat$plant.mass[water == "LW" & 
                                nutr == "LN"])$p.value
shapiro.test(P.dat$plant.mass[water == "LW" & 
                                nutr == "HN"])$p.value
shapiro.test(P.dat$plant.mass[water == "HW" & 
                                nutr == "LN"])$p.value
shapiro.test(P.dat$plant.mass[water == "HW" & 
                                nutr == "HN"])$p.value


###################################################
### code chunk number 161: biostats.rnw:3252-3254
###################################################
my.aov2 = aov(P.dat$plant.mass ~ 
               P.dat$water * P.dat$nutr)


###################################################
### code chunk number 162: biostats.rnw:3261-3262
###################################################
summary(my.aov2)


###################################################
### code chunk number 164: fig:intplot.fig
###################################################
interaction.plot(P.dat$water, trace.label = "nutr",
     trace.factor = P.dat$nutr, P.dat$plant.mass)


###################################################
### code chunk number 165: biostats.rnw:3297-3298
###################################################
interaction.plot(P.dat$water, trace.label = "nutr",
     trace.factor = P.dat$nutr, P.dat$plant.mass)


###################################################
### code chunk number 166: biostats.rnw:3308-3309
###################################################
TukeyHSD(my.aov2) 


###################################################
### code chunk number 167: biostats.rnw:3328-3331
###################################################
M = tapply(P.dat$plant.mass,
           list(P.dat$water, P.dat$nutr),
           mean)


###################################################
### code chunk number 168: two.way.anova
###################################################
barplot(M, beside = TRUE, ylim = c(0,20), 
  xlab = "Nutrient Level", ylab = "Mass (g)",
  legend = c("High Water","Low Water"),
  cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 169: biostats.rnw:3347-3348
###################################################
barplot(M, beside = TRUE, ylim = c(0,20), 
  xlab = "Nutrient Level", ylab = "Mass (g)",
  legend = c("High Water","Low Water"),
  cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 170: biostats.rnw:3382-3395
###################################################
#library(xtable)
colheader = c("Farm 1","Farm 2","Farm 3","Farm 4","Farm 5") 
F1 = c(24,15,21,27,33,23)
F2 = c(14,7,12,17,14,16)
F3 = c(11,9,7,13,12,18)
F4 = c(7,7,4,7,12,18)
F5 = c(19,24,19,15,10,20)
milk.dat=data.frame(F1,F2,F3,F4,F5)
names(milk.dat) = colheader


###################################################
### code chunk number 171: biostats.rnw:3414-3440
###################################################
#library(xtable)
set.seed(10)
nreps = 5
Temp = rep(c("C","W"), each = 2*nreps)
pH = rep(c("H","L"), each = 5, 2)
#######  Means and reps    ####################
# C = cold, W = warm,
# H = high pH, L = low pH
CH = 4.6
CL = 3.3
WH = 4.6
WL = 5.8
SD = 0.25
#######  Create dataframe		####################
colheader = c("Length","Temp","pH")
a = round(rnorm(nreps, CH, SD),1)
b = round(rnorm(nreps, CL, SD),1)
c = round(rnorm(nreps, WH, SD),1)
d = round(rnorm(nreps, WL, SD),1)
my.stick = data.frame(matrix(c(a,b,c,d,Temp,pH),ncol = 3))
names(my.stick) = c("Length","Temp","pH")
setwd("C:/hartvig/Google Drive/active/words/biostats")
write.csv(my.stick,"sticklebacks.csv", quote = F,row.names = F)


###################################################
### code chunk number 172: fig.correlation1
###################################################
churches = c(29, 44, 45, 46, 53, 53, 54, 57, 70, 90)
bars = c(20, 22, 36, 37, 38, 41, 60, 72, 76, 99)
plot(churches,bars, cex = 1.5, pch = 19, 
     xlab = "Number of Churches",ylab = "Number of Bars",
     xlim = c(0,100), ylim = c(0,100),cex.lab = 1.5)


###################################################
### code chunk number 173: biostats.rnw:3508-3509
###################################################
churches = c(29, 44, 45, 46, 53, 53, 54, 57, 70, 90)
bars = c(20, 22, 36, 37, 38, 41, 60, 72, 76, 99)
plot(churches,bars, cex = 1.5, pch = 19, 
     xlab = "Number of Churches",ylab = "Number of Bars",
     xlim = c(0,100), ylim = c(0,100),cex.lab = 1.5)


###################################################
### code chunk number 174: biostats.rnw:3524-3526
###################################################
shapiro.test(churches)$p.value
shapiro.test(bars)$p.value


###################################################
### code chunk number 175: biostats.rnw:3533-3534
###################################################
cor.test(bars,churches) # Are these correlated?


###################################################
### code chunk number 176: biostats.rnw:3545-3546
###################################################
world.pop = read.csv("worldpop.csv") # name I gave the file


###################################################
### code chunk number 177: biostats.rnw:3551-3552
###################################################
head(names(world.pop))


###################################################
### code chunk number 178: fig:world.pop.hists
###################################################
par(mfrow = c(1,2))
hist(world.pop$X2012,main = "", ylim = c(0,250),
     xlab = "Populations")
hist(log(world.pop$X2012), main = "", ylim = c(0,80),
     xlab = "log(Populations)")
par(mfrow = c(1,1)) # restore graphics window


###################################################
### code chunk number 179: biostats.rnw:3568-3569
###################################################
par(mfrow = c(1,2))
hist(world.pop$X2012,main = "", ylim = c(0,250),
     xlab = "Populations")
hist(log(world.pop$X2012), main = "", ylim = c(0,80),
     xlab = "log(Populations)")
par(mfrow = c(1,1)) # restore graphics window


###################################################
### code chunk number 180: fig:world.pop.pairs
###################################################
pop = data.frame(world.pop$X1960,world.pop$X1985,
               world.pop$X2012)
pop = log(pop) # log all the data
names(pop) = c("1960","1985","2012") # give them names
pop = pop[complete.cases(pop),] # remove missing values
pairs(pop) # Note that the pop data are logged


###################################################
### code chunk number 181: biostats.rnw:3590-3591
###################################################
pop = data.frame(world.pop$X1960,world.pop$X1985,
               world.pop$X2012)
pop = log(pop) # log all the data
names(pop) = c("1960","1985","2012") # give them names
pop = pop[complete.cases(pop),] # remove missing values
pairs(pop) # Note that the pop data are logged


###################################################
### code chunk number 182: biostats.rnw:3602-3603
###################################################
cor(pop)


###################################################
### code chunk number 183: biostats.rnw:3608-3610
###################################################
names(pop)
cor.test(pop$"1960",pop$"2012")


###################################################
### code chunk number 184: biostats.rnw:3627-3630
###################################################
drinks = 1:10
BAC = c(0.02, 0.05, 0.07, 0.09, 0.12, 0.14, 0.16, 0.19,
        0.21, 0.23)


###################################################
### code chunk number 185: fig:linreg.fig
###################################################
par(mfrow = c(1,2))
plot(drinks,BAC, pch= 16, cex.lab = 1.5, xlim = c(0, 11), 
     ylim = c(0,0.3), xlab = "Number of Drinks")
plot(BAC,drinks, pch= 16, cex.lab = 1.5, ylim = c(0, 11), 
     xlim = c(0,0.3), ylab = "Number of Drinks")
par(mfrow = c(1,1))


###################################################
### code chunk number 186: biostats.rnw:3646-3647
###################################################
par(mfrow = c(1,2))
plot(drinks,BAC, pch= 16, cex.lab = 1.5, xlim = c(0, 11), 
     ylim = c(0,0.3), xlab = "Number of Drinks")
plot(BAC,drinks, pch= 16, cex.lab = 1.5, ylim = c(0, 11), 
     xlim = c(0,0.3), ylab = "Number of Drinks")
par(mfrow = c(1,1))


###################################################
### code chunk number 187: biostats.rnw:3659-3660
###################################################
shapiro.test(BAC)$p.value


###################################################
### code chunk number 188: biostats.rnw:3667-3668
###################################################
mod = lm(BAC ~ drinks) # this is y ~ x


###################################################
### code chunk number 189: biostats.rnw:3673-3674
###################################################
summary(mod)


###################################################
### code chunk number 190: fig:linregshortline.fig
###################################################
par(mfrow = c(1,2))
plot(drinks,BAC, pch= 16, cex.lab = 1.5, 
     xlim = c(0, 12), ylim = c(0,0.3), 
     xlab = "Number of Drinks")
abline(mod)
plot(drinks,BAC, pch= 16, cex.lab = 1.5, 
     xlim = c(0, 12), ylim = c(0,0.3), 
     xlab = "Number of Drinks")
lines(drinks,fitted(mod), lwd = 2)
par(mfrow = c(1,1))


###################################################
### code chunk number 191: biostats.rnw:3720-3721
###################################################
par(mfrow = c(1,2))
plot(drinks,BAC, pch= 16, cex.lab = 1.5, 
     xlim = c(0, 12), ylim = c(0,0.3), 
     xlab = "Number of Drinks")
abline(mod)
plot(drinks,BAC, pch= 16, cex.lab = 1.5, 
     xlim = c(0, 12), ylim = c(0,0.3), 
     xlab = "Number of Drinks")
lines(drinks,fitted(mod), lwd = 2)
par(mfrow = c(1,1))


###################################################
### code chunk number 192: biostats.rnw:3736-3744
###################################################
aveNumD = c(3.96, 4.10, 3.58, 3.05, 3.17, 
            3.23, 2.77, 2.29, 1.76, 2.21, 
            2.47, 2.79, 2.56, 2.26, 2.07, 
            1.35)
PredLength = c(16.16, 18.87, 35.37, 31.67,
               50.15, 51.13, 27.73, 38.33, 
               24.29, 51.13, 55.07, 53.60, 
               60.49, 59.51, 66.40, 55.32)


###################################################
### code chunk number 193: fig.chickadee
###################################################
plot(PredLength,aveNumD,pch = 16,xlim = c(0,70),
     ylim = c(0,4.5), 
     xlab = "Predator Body Length (cm)", 
     ylab = "Dee Notes Per Call",
     xaxs = "i", yaxs = "i",cex.lab = 1.5)
fit = lm(aveNumD ~ PredLength)
lines(PredLength,fitted(fit),lwd = 2)
# Add the line from description of Figure2B.
abline(a = 4.4, b = -0.4, lwd = 2, 
       lty = 2) # line from pub


###################################################
### code chunk number 194: biostats.rnw:3766-3767
###################################################
plot(PredLength,aveNumD,pch = 16,xlim = c(0,70),
     ylim = c(0,4.5), 
     xlab = "Predator Body Length (cm)", 
     ylab = "Dee Notes Per Call",
     xaxs = "i", yaxs = "i",cex.lab = 1.5)
fit = lm(aveNumD ~ PredLength)
lines(PredLength,fitted(fit),lwd = 2)
# Add the line from description of Figure2B.
abline(a = 4.4, b = -0.4, lwd = 2, 
       lty = 2) # line from pub


###################################################
### code chunk number 195: biostats.rnw:3847-3849
###################################################
obs = c(50,20) # observed counts
expP = c(0.75,0.25) # expected probabilities


###################################################
### code chunk number 196: biostats.rnw:3854-3855
###################################################
chisq.test(obs, p = expP)


###################################################
### code chunk number 197: biostats.rnw:3906-3907
###################################################
16*18/36


###################################################
### code chunk number 198: biostats.rnw:3912-3914
###################################################
mat = matrix(c(10,6,8,12), byrow = TRUE, nrow = 2)
mat


###################################################
### code chunk number 199: biostats.rnw:3919-3920
###################################################
chisq.test(mat)


###################################################
### code chunk number 200: biostats.rnw:3941-3942
###################################################
M = matrix(c(22,4,15,10),byrow = TRUE, nrow = 2)


###################################################
### code chunk number 201: DTCryo
###################################################
barplot(M,beside = TRUE, ylim = c(0,30),
  xlab = "Treatment", ylab = "Number of Patients", 
  names = c("Resolved","Not Resolved"), 
  legend = c("DT","Cryo"), cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 202: biostats.rnw:3958-3959
###################################################
barplot(M,beside = TRUE, ylim = c(0,30),
  xlab = "Treatment", ylab = "Number of Patients", 
  names = c("Resolved","Not Resolved"), 
  legend = c("DT","Cryo"), cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 203: biostats.rnw:3970-3971
###################################################
chisq.test(M)


###################################################
### code chunk number 204: biostats.rnw:3976-3977
###################################################
chisq.test(M,correct = F) # not using the Yates correction


###################################################
### code chunk number 205: biostats.rnw:3984-3985
###################################################
cs = chisq.test(M,correct = F)


###################################################
### code chunk number 206: biostats.rnw:3990-3991
###################################################
names(cs)


###################################################
### code chunk number 207: biostats.rnw:3996-3998
###################################################
cs$obs
cs$exp # you can use just enough letters to be unique


###################################################
### code chunk number 208: biostats.rnw:4007-4009
###################################################
M = matrix(c(22,4,15,10),byrow = TRUE, nrow = 2)
fisher.test(M)


###################################################
### code chunk number 209: biostats.rnw:4085-4088
###################################################
my.dat = c(6,3,4,5,3,1)
answer = mean(my.dat) # store the return solution in a var.
mean(my.dat) # no storage so print the answer to console


###################################################
### code chunk number 210: biostats.rnw:4093-4097
###################################################
my.mean = function (x) {
  ans = sum(x)/length(x)
  return (ans)
}


###################################################
### code chunk number 211: biostats.rnw:4106-4108
###################################################
my.dat = c(6,5,4,5,6,5,4,1) # create some data
my.mean(my.dat) # send the new function the data


###################################################
### code chunk number 212: biostats.rnw:4113-4114
###################################################
mean(my.dat)


###################################################
### code chunk number 213: biostats.rnw:4137-4140
###################################################
lm.line = function (x, y) {
  lines(x,fitted(lm(y~x)))
}


###################################################
### code chunk number 214: biostats.rnw:4145-4149
###################################################
set.seed(100)
x = 5:20
y = 0.4*x + 2 + 7.5*runif(length(x))
mod = lm(y~x)


###################################################
### code chunk number 215: fig:lm.line.fig
###################################################
par(mfrow = c(1,2)) # create a two-panel graphics window
plot(x,y, xlim = c(0,25), ylim = c(0,20), pch=16, 
     cex.lab = 1.5)
abline(mod)
plot(x,y, xlim = c(0,25), ylim = c(0,20), pch=16, 
     cex.lab = 1.5)
lm.line(x,y)


###################################################
### code chunk number 216: biostats.rnw:4169-4170
###################################################
par(mfrow = c(1,2)) # create a two-panel graphics window
plot(x,y, xlim = c(0,25), ylim = c(0,20), pch=16, 
     cex.lab = 1.5)
abline(mod)
plot(x,y, xlim = c(0,25), ylim = c(0,20), pch=16, 
     cex.lab = 1.5)
lm.line(x,y)


###################################################
### code chunk number 217: biostats.rnw:4209-4212
###################################################
N = 10
hts = c(12,15.5,10.2) # mean heights of trees
S = c(2.3,3.3,2.6) # standard deviations


###################################################
### code chunk number 218: biostats.rnw:4217-4219
###################################################
T = qt(1-0.05/2,9) # for all samples if df = 10-1 = 9
SEM = S/sqrt(10) # because S is an array, SEM is an array


###################################################
### code chunk number 219: biostats.rnw:4226-4227
###################################################
CI95 = T*SEM # our 95% CI length (one direction)


###################################################
### code chunk number 220: barplot.95CI
###################################################
library(plotrix) # you need to have installed this.
names = c("Red Oak", "White Pine", "Sassafras")
a = barplot(hts, ylim = c(0,20),names.arg = names, 
            ylab = "Height (m)", cex.lab = 1.5, 
            xlab = "Tree Species") 
abline(h = 0)
plotCI(a,hts,CI95, add = T, pch = NA)


###################################################
### code chunk number 221: biostats.rnw:4247-4248
###################################################
library(plotrix) # you need to have installed this.
names = c("Red Oak", "White Pine", "Sassafras")
a = barplot(hts, ylim = c(0,20),names.arg = names, 
            ylab = "Height (m)", cex.lab = 1.5, 
            xlab = "Tree Species") 
abline(h = 0)
plotCI(a,hts,CI95, add = T, pch = NA)


###################################################
### code chunk number 222: biostats.rnw:4264-4276
###################################################
Low = c(52.3, 48.0, 39.3, 50.8, 53.3, 45.1)
Med = c(50.4, 53.8, 53.4, 58.1, 56.7, 61.2)
High = c(66.3, 59.9, 59.9, 61.3, 58.3, 59.4)
my.fish.dat = data.frame(Low,Med,High)
my.fish.dat = stack(my.fish.dat)
names(my.fish.dat) = c("Mass","Trmt")
my.fish.dat$Trmt = factor(my.fish.dat$Trmt, 
        levels = c("Low","Med","High"))
boxplot(my.fish.dat$Mass ~ my.fish.dat$Trmt,
        names = c("Low","Medium","High"),
        xlab = "Feeding Rate", ylab = "Fish Mass (g)",
        cex.lab = 1.5)


###################################################
### code chunk number 223: biostats.rnw:4281-4284
###################################################
shapiro.test(Low)$p.value # output suppressed
shapiro.test(Med)$p.value
shapiro.test(High)$p.value


###################################################
### code chunk number 224: biostats.rnw:4287-4290
###################################################
# output suppressed
my.aov = aov(my.fish.dat$Mass~my.fish.dat$Trmt)
summary(my.aov)


###################################################
### code chunk number 225: biostats.rnw:4295-4296
###################################################
TukeyHSD(my.aov)[1] # the [1] provides just the table


###################################################
### code chunk number 226: biostats.rnw:4326-4332
###################################################
low = c(52.3, 48.0, 39.3, 50.8, 53.3, 45.1)
med = c(50.4, 53.8, 53.4, 58.1, 56.7, 61.2)
high = c(66.3, 59.9, 59.9, 61.3, 58.3, 59.4)
my.fish.dat = data.frame(low,med,high)
my.fish.dat = stack(my.fish.dat)
names(my.fish.dat) = c("Mass","Trmt")


###################################################
### code chunk number 227: barplot.95CIletters
###################################################
library(plotrix) # you need to have installed this.
M = tapply(my.fish.dat$Mass,my.fish.dat$Trmt,mean) #get means
S = tapply(my.fish.dat$Mass,my.fish.dat$Trmt,sd) # get sds
M = c(M[2],M[3],M[1]) # rearrange the order (low, med, high)
S = c(S[2],S[3],S[1]) # rearrange the order (low, med, high)
T = qt(1-0.05/2,5) # for all samples if df = 6 - 1 = 5
SEM = S/sqrt(6) # because S is an array, SEM is an array
CI95 = T * SEM
a = barplot(M, ylim = c(0,70),
            names.arg = c("Low", "Medium", "High"), 
            ylab = "Fish Mass (g)", cex.lab = 1.5, 
            xlab = "Feeding Rate") 
abline(h = 0)
plotCI(a,M,CI95, add = T, pch = NA)
contrast.labels = c("a","b","b")
text(a, M+CI95, labels =   contrast.labels, pos = 3)


###################################################
### code chunk number 228: biostats.rnw:4355-4356
###################################################
library(plotrix) # you need to have installed this.
M = tapply(my.fish.dat$Mass,my.fish.dat$Trmt,mean) #get means
S = tapply(my.fish.dat$Mass,my.fish.dat$Trmt,sd) # get sds
M = c(M[2],M[3],M[1]) # rearrange the order (low, med, high)
S = c(S[2],S[3],S[1]) # rearrange the order (low, med, high)
T = qt(1-0.05/2,5) # for all samples if df = 6 - 1 = 5
SEM = S/sqrt(6) # because S is an array, SEM is an array
CI95 = T * SEM
a = barplot(M, ylim = c(0,70),
            names.arg = c("Low", "Medium", "High"), 
            ylab = "Fish Mass (g)", cex.lab = 1.5, 
            xlab = "Feeding Rate") 
abline(h = 0)
plotCI(a,M,CI95, add = T, pch = NA)
contrast.labels = c("a","b","b")
text(a, M+CI95, labels =   contrast.labels, pos = 3)


###################################################
### code chunk number 229: regress.95CI
###################################################
plot(BOD$Time,BOD$demand, pch = 16, ylim = c(0,30),
     ylab = "BOD (mg/l)", xlab = "Time")
mod = lm(BOD$demand~BOD$Time)
lm.line(BOD$Time,BOD$demand) # line function from earlier
newx = BOD$Time# seq(min(BOD$Time),max(BOD$Time))
prd<-predict(mod,#newdata=data.frame(x=newx),
             interval = c("confidence"), level = 0.95,
             type="response")
lines(newx,prd[,2],lty=2, lwd = 2)
lines(newx,prd[,3],lty=2, lwd = 2)


###################################################
### code chunk number 230: biostats.rnw:4389-4390
###################################################
plot(BOD$Time,BOD$demand, pch = 16, ylim = c(0,30),
     ylab = "BOD (mg/l)", xlab = "Time")
mod = lm(BOD$demand~BOD$Time)
lm.line(BOD$Time,BOD$demand) # line function from earlier
newx = BOD$Time# seq(min(BOD$Time),max(BOD$Time))
prd<-predict(mod,#newdata=data.frame(x=newx),
             interval = c("confidence"), level = 0.95,
             type="response")
lines(newx,prd[,2],lty=2, lwd = 2)
lines(newx,prd[,3],lty=2, lwd = 2)


###################################################
### code chunk number 231: biostats.rnw:4420-4424
###################################################
set.seed(101)
x = 1:10
y = round(0.5*x + 85 + 4*runif(length(x)),1)
y


###################################################
### code chunk number 232: regress.bad.fit
###################################################
mod1 = lm(y~x)
mod2 = lm(y ~ poly(x,9))
par(mfrow = c(1,2))
plot(x,y, xlim = c(0,12), ylim = c(85,95), 
     ylab = "Dolphin Mass (kg)", xlab = "Time (weeks)", 
     pch = 16, cex.lab = 1.5)
lines(x,fitted(mod1),lwd = 2)
plot(x,y, xlim = c(0,12), ylim = c(85,95), 
     ylab = "Dolphin Mass (kg)", xlab = "Time (weeks)", 
     pch = 16, cex.lab = 1.5)
xvals = seq(1,10,by=0.1)
yvals = predict(mod2,list(x = xvals))
lines(xvals,yvals,lwd = 2)


###################################################
### code chunk number 233: biostats.rnw:4451-4452
###################################################
mod1 = lm(y~x)
mod2 = lm(y ~ poly(x,9))
par(mfrow = c(1,2))
plot(x,y, xlim = c(0,12), ylim = c(85,95), 
     ylab = "Dolphin Mass (kg)", xlab = "Time (weeks)", 
     pch = 16, cex.lab = 1.5)
lines(x,fitted(mod1),lwd = 2)
plot(x,y, xlim = c(0,12), ylim = c(85,95), 
     ylab = "Dolphin Mass (kg)", xlab = "Time (weeks)", 
     pch = 16, cex.lab = 1.5)
xvals = seq(1,10,by=0.1)
yvals = predict(mod2,list(x = xvals))
lines(xvals,yvals,lwd = 2)


###################################################
### code chunk number 234: fig:plant.ht
###################################################
ht = c(4.0, 8.5, 12.2, 13.4, 15.0, 17.8, 19.3, 19.4, 21.2, 
       21.7, 23.4, 23.8, 24.1, 24.7, 24.9, 25.5)
time = 1:16
mod = lm(ht ~ time)
plot(time,ht, xlim = c(0,16), ylim = c(0,30), 
     ylab = "Plant Height (cm)", xlab = "Time (months)", 
     pch = 16, cex.lab = 1.5)
lines(time,fitted(mod), lwd = 2)


###################################################
### code chunk number 235: biostats.rnw:4477-4478
###################################################
ht = c(4.0, 8.5, 12.2, 13.4, 15.0, 17.8, 19.3, 19.4, 21.2, 
       21.7, 23.4, 23.8, 24.1, 24.7, 24.9, 25.5)
time = 1:16
mod = lm(ht ~ time)
plot(time,ht, xlim = c(0,16), ylim = c(0,30), 
     ylab = "Plant Height (cm)", xlab = "Time (months)", 
     pch = 16, cex.lab = 1.5)
lines(time,fitted(mod), lwd = 2)


###################################################
### code chunk number 236: fig:poly1
###################################################
plot(time,ht, xlim = c(0,16), ylim = c(0,30), 
     ylab = "Plant Height (cm)", xlab = "Time (months)", 
     pch = 16, cex.lab = 1.5)
curve(-0.12*x^2+3.1*x+3,from = 1,to = 16,add = TRUE)


###################################################
### code chunk number 237: biostats.rnw:4504-4505
###################################################
plot(time,ht, xlim = c(0,16), ylim = c(0,30), 
     ylab = "Plant Height (cm)", xlab = "Time (months)", 
     pch = 16, cex.lab = 1.5)
curve(-0.12*x^2+3.1*x+3,from = 1,to = 16,add = TRUE)


###################################################
### code chunk number 238: fig:asym1.fig
###################################################
plot(time,ht, xlim = c(0,16), ylim = c(0,30), 
     ylab = "Plant Height (cm)", xlab = "Time (months)", 
     pch = 16, cex.lab = 1.5)
curve(25 * (1 - exp(-(1*x))),from=0,to=16,add = TRUE)


###################################################
### code chunk number 239: biostats.rnw:4539-4540
###################################################
plot(time,ht, xlim = c(0,16), ylim = c(0,30), 
     ylab = "Plant Height (cm)", xlab = "Time (months)", 
     pch = 16, cex.lab = 1.5)
curve(25 * (1 - exp(-(1*x))),from=0,to=16,add = TRUE)


###################################################
### code chunk number 240: biostats.rnw:4550-4551
###################################################
fit=nls(ht~a*(1-exp(-b*time)),start=list(a=25,b=1))


###################################################
### code chunk number 241: biostats.rnw:4559-4560
###################################################
summary(fit)


###################################################
### code chunk number 242: fig:asym2.fig
###################################################
plot(time,ht, xlim = c(0,16), ylim = c(0,30), pch = 16,
  ylab = "Plant Height (cm)", xlab = "Time (months)", 
     cex.lab = 1.5)
av = seq(0,16,0.1)
bv = predict(fit,list(time = av))
lines(av,bv)
asymptote = sum(coef(fit)[1]) # asymptote is the 
    # sum of these two coefficients
abline(h = asymptote, lwd = 2, lty = 2)


###################################################
### code chunk number 243: biostats.rnw:4588-4589
###################################################
plot(time,ht, xlim = c(0,16), ylim = c(0,30), pch = 16,
  ylab = "Plant Height (cm)", xlab = "Time (months)", 
     cex.lab = 1.5)
av = seq(0,16,0.1)
bv = predict(fit,list(time = av))
lines(av,bv)
asymptote = sum(coef(fit)[1]) # asymptote is the 
    # sum of these two coefficients
abline(h = asymptote, lwd = 2, lty = 2)


###################################################
### code chunk number 244: biostats.rnw:4618-4620
###################################################
S = c(0.2,0.5,1,2,5) # x-axis data ([S])
v = c(0.576, 0.762, 0.846, 0.860, 0.911) # velocity


###################################################
### code chunk number 245: fig.MM1.fig
###################################################
plot(S,v, xlab = "[S]", ylab = "Velocity", xlim = c(0,max(S)),
     ylim = c(0,1),cex.lab = 1.5, pch=16)


###################################################
### code chunk number 246: biostats.rnw:4630-4631
###################################################
plot(S,v, xlab = "[S]", ylab = "Velocity", xlim = c(0,max(S)),
     ylim = c(0,1),cex.lab = 1.5, pch=16)


###################################################
### code chunk number 247: biostats.rnw:4640-4642
###################################################
mod = nls(v~(Vmax.fit*S)/(Km.fit + S),
          start=list(Vmax.fit = 1,Km.fit = .1))


###################################################
### code chunk number 248: biostats.rnw:4647-4648
###################################################
summary(mod)


###################################################
### code chunk number 249: fig:MM2.fig
###################################################
plot(S,v, xlab = "[S]", ylab = "Velocity", xlim = c(0,max(S)),
     ylim = c(0,1),cex.lab = 1.5, pch=16)
x = seq(0,max(S),by = 0.01) # an array seq. of x values
y = predict(mod,list(S = x)) # the predicted y values
lines(x,y, lwd = 2) # draw the line
asymptote = coef(mod)[1] # value of the asymptote
abline(h = asymptote)


###################################################
### code chunk number 250: biostats.rnw:4665-4666
###################################################
plot(S,v, xlab = "[S]", ylab = "Velocity", xlim = c(0,max(S)),
     ylim = c(0,1),cex.lab = 1.5, pch=16)
x = seq(0,max(S),by = 0.01) # an array seq. of x values
y = predict(mod,list(S = x)) # the predicted y values
lines(x,y, lwd = 2) # draw the line
asymptote = coef(mod)[1] # value of the asymptote
abline(h = asymptote)


###################################################
### code chunk number 251: biostats.rnw:4677-4679
###################################################
Vmax = coef(mod)[1] # this is Vmax
Km = coef(mod)[2] # this is Km


###################################################
### code chunk number 252: biostats.rnw:4684-4687
###################################################
my.exp = expression(Vmax * my.S/(Km+my.S))
my.deriv = D(my.exp,"my.S")
my.deriv # look a the derivative returned by D()


###################################################
### code chunk number 253: fig.MM3.fig
###################################################
plot(S,v, xlab = "[S]", ylab = "Velocity", xlim = c(0,max(S)),
     ylim = c(0,1),cex.lab = 1.5, pch=16)
my.S = 1 # choose where on [S] to get the rate (tangent line)
der.slope = eval(my.deriv) # get slow using deriv. at my.S
der.y = eval(my.exp) # Ht of the best-fit function at my.S
der.int = der.y - der.slope*my.S # The intercept of tangent
lines(x,y, lwd = 2)
asymptote = Vmax
abline(der.int,der.slope,lwd = 2,lty = 2) # draw tangent
abline(v=my.S) # place a vert line at tangent 


###################################################
### code chunk number 254: biostats.rnw:4707-4708
###################################################
plot(S,v, xlab = "[S]", ylab = "Velocity", xlim = c(0,max(S)),
     ylim = c(0,1),cex.lab = 1.5, pch=16)
my.S = 1 # choose where on [S] to get the rate (tangent line)
der.slope = eval(my.deriv) # get slow using deriv. at my.S
der.y = eval(my.exp) # Ht of the best-fit function at my.S
der.int = der.y - der.slope*my.S # The intercept of tangent
lines(x,y, lwd = 2)
asymptote = Vmax
abline(der.int,der.slope,lwd = 2,lty = 2) # draw tangent
abline(v=my.S) # place a vert line at tangent 


###################################################
### code chunk number 255: biostats.rnw:4717-4719
###################################################
cat("The velocity of the reaction at",
    my.S," is ",der.slope,"\n")


###################################################
### code chunk number 256: biostats.rnw:4749-4763
###################################################
library(deSolve)  # library for solving diff. equations
num_yrs = 10
r = 0.2 # the growth rate parameter
N0 = 100 # starting population
xstart = c(N=N0) # create a "list" of constants - 
    # used in the solve function
parms = r # here's our one parameter
mod = function(t,x,parms) {
  N = x[1]
  with(as.list(parms) , {
    dN = r*N
    res=c(dN)
    list(res)
  })}


###################################################
### code chunk number 257: fig.exp.gr.fig
###################################################
time=seq(0,num_yrs, by = 0.1)  # set number of time steps
# RUN THE MODEL in the next line!
output = as.data.frame(lsoda(xstart,time,mod,parms)) 
plot(output$time,output$N, xlab = "Time", ylab = "N", 
     type = "l", cex.lab = 1.5)


###################################################
### code chunk number 258: biostats.rnw:4778-4779
###################################################
time=seq(0,num_yrs, by = 0.1)  # set number of time steps
# RUN THE MODEL in the next line!
output = as.data.frame(lsoda(xstart,time,mod,parms)) 
plot(output$time,output$N, xlab = "Time", ylab = "N", 
     type = "l", cex.lab = 1.5)


###################################################
### code chunk number 259: biostats.rnw:4803-4811
###################################################
Num_Days = 20  # number of days to run simulation
B = 0.006      # transmission rate (0.006)
v = 0.3        # recovery rate (0.3)
So = 499	     # initial susceptible pop (299)
Io = 1	       # initial infectious pop (1)
Ro = 0	       # initial recovered pop (0)
xstart = c(S=So,I = Io, R = Ro)
parms = c(B, v)


###################################################
### code chunk number 260: biostats.rnw:4816-4827
###################################################
mod = function(t,x,parms) {
  S = x[1] # init num of susceptibles
  I = x[2] # init num of infectious
  R = x[3] # init num of recovered
  with(as.list(parms) , {
    dS = -B*S*I       # dS/dt
    dI = B*S*I - v*I  # dI/dt
    dR = v*I          # dR/dt
    res=c(dS,dI,dR)
    list(res)
  })}


###################################################
### code chunk number 261: fig.SIR
###################################################
times=seq(0,Num_Days,length=200)  # set up time steps
# RUN THE MODEL!
output = as.data.frame(lsoda(xstart,times,mod,parms))  
plot(output$time, output$S, type="n",ylab="Abundance",
     xlab="Time", main="ODE Model", cex.lab = 1.5,
     ylim = c(0,So*1.6))
leg.txt = c("S","I","R")
legend("topright",leg.txt,lwd=2,lty = 1:3)
lines(output$time,output$S,lty = 1,lwd=3)
lines(output$time,output$I,lty = 2,lwd=3)
lines(output$time,output$R,lty = 3,lwd=3)


###################################################
### code chunk number 262: biostats.rnw:4847-4848
###################################################
times=seq(0,Num_Days,length=200)  # set up time steps
# RUN THE MODEL!
output = as.data.frame(lsoda(xstart,times,mod,parms))  
plot(output$time, output$S, type="n",ylab="Abundance",
     xlab="Time", main="ODE Model", cex.lab = 1.5,
     ylim = c(0,So*1.6))
leg.txt = c("S","I","R")
legend("topright",leg.txt,lwd=2,lty = 1:3)
lines(output$time,output$S,lty = 1,lwd=3)
lines(output$time,output$I,lty = 2,lwd=3)
lines(output$time,output$R,lty = 3,lwd=3)


###################################################
### code chunk number 263: biostats.rnw:4882-4890
###################################################
A= c(8.8, 8.4, 7.9, 8.7, 9.1, 9.6)
B = c(10.6, 9.8, 10.1, 8.4, 9.6, 10.2)
C = c(11.6, 11.4, 9.1, 10.7, 14.9, 12.9)
my.dat = data.frame(A,B,C)
boxplot(my.dat)
my.dat = stack(my.dat)
names(my.dat) = c("Clots","Drug")
summary(aov(my.dat$Clots ~ my.dat$Drug))


###################################################
### code chunk number 264: biostats.rnw:4996-4997
###################################################
set.seed(20)


###################################################
### code chunk number 265: biostats.rnw:5002-5004
###################################################
num.values = 100
num.samples = 5000 # the number of samples to draw


###################################################
### code chunk number 266: biostats.rnw:5009-5011
###################################################
means.norm = numeric(num.samples) # will hold 5000 values
means.unif = numeric(num.samples)


###################################################
### code chunk number 267: biostats.rnw:5016-5020
###################################################
for (i in 1:num.samples) {
  means.norm[i] = mean(rnorm(num.values))
  means.unif[i] = mean(runif(num.values))
}


###################################################
### code chunk number 268: code.CLT
###################################################
par(mfrow = c(2,2)) 
hist(rnorm(num.samples),xlab = "X",main = "Normal Sample", 
     ylim = c(0,1000))
hist(runif(num.samples),xlab = "X",main = "Uniform Sample", 
     ylim = c(0,1000))
hist(means.norm, xlab = "X",main = "Means from Normal Dist", 
     ylim = c(0,1000))
hist(means.unif,xlab = "X",main = "Means from Uniform Dist", 
     ylim = c(0,1000))
par(mfrow = c(1,1)) 


###################################################
### code chunk number 269: biostats.rnw:5051-5052
###################################################
par(mfrow = c(2,2)) 
hist(rnorm(num.samples),xlab = "X",main = "Normal Sample", 
     ylim = c(0,1000))
hist(runif(num.samples),xlab = "X",main = "Uniform Sample", 
     ylim = c(0,1000))
hist(means.norm, xlab = "X",main = "Means from Normal Dist", 
     ylim = c(0,1000))
hist(means.unif,xlab = "X",main = "Means from Uniform Dist", 
     ylim = c(0,1000))
par(mfrow = c(1,1)) 


###################################################
### code chunk number 270: biostats.rnw:5062-5064
###################################################
shapiro.test(means.norm) # from normal pop
shapiro.test(means.unif) # from unif pop


###################################################
### code chunk number 271: fig.drift.ex
###################################################
set.seed(10) # gives repeatable result
# Step 1: Define variables
n.time.steps = 100 # how long to run simulation
pop.size = 50 # how many individuals there are
n.reps = 20 # how many populations to simulate
# Step 2: Create an empty plot for simulation
plot(0,ylim = c(0,1),xlim = c(1,n.time.steps), type = "n", 
     ylab = "Proportion of Allele 1 in Population",
     xlab = "Time Step", cex.lab = 1.5)
abline(h=0.5,lty = 2, lwd = 3)
# Step 3: Perform the reproduction routine many times;
for (i in 1:n.reps) {
  # Step 3a: Create population of 0 and 1 alleles
  pop = c(rep(0,pop.size/2),rep(1,pop.size/2))
  # Step 3b: Store proportion of 1s in variable
  P = sum(pop)/pop.size
  # Step 3c: Run the simulation for this replicate
	for (j in 2:n.time.steps) {
		pop = sample(pop,pop.size, replace = T)
		P[j] = sum(pop)/pop.size
	}
  # Step 3d: Add line to graph for this replicate
  lines(P)
}


###################################################
### code chunk number 273: biostats.rnw:5145-5155
###################################################
# x = c() # should enter data here
set.seed(100) # so your numbers match mine
x = rnorm(100) # using these data for demonstration
a = shapiro.test(x)
{
if(a$p.value > 0.05) 
  cat("The data are normally distributed: p = ",a$p.value)
else
  cat("The data are not normally distributed: p = ",a$p.value)
}


###################################################
### code chunk number 274: biostats.rnw:5303-5304
###################################################
sqrt(17)


###################################################
### code chunk number 275: biostats.rnw:5307-5308
###################################################
log(10,base = 8)


###################################################
### code chunk number 276: biostats.rnw:5311-5313
###################################################
x = 3 # first, set x = 3, then use it
17 + (5*x + 7)/2


###################################################
### code chunk number 277: biostats.rnw:5318-5320
###################################################
r = 13.5/2 # get the radius
pi * r^2


###################################################
### code chunk number 278: biostats.rnw:5325-5327
###################################################
# Small dataset so use c():
my.dat = c(3.2,6.7,5.5,3.1,4.2,7.3,6.0,8.8,5.8,4.6)


###################################################
### code chunk number 279: biostats.rnw:5330-5331
###################################################
mean(my.dat)


###################################################
### code chunk number 280: biostats.rnw:5335-5336
###################################################
sd(my.dat)


###################################################
### code chunk number 281: biostats.rnw:5339-5341
###################################################
sd(my.dat)^2
var(my.dat)


###################################################
### code chunk number 282: biostats.rnw:5348-5349
###################################################
230/28 # miles per gallon (mpg)


###################################################
### code chunk number 283: biostats.rnw:5352-5353
###################################################
(230/28)*32 # mpg * number of gallons held by tank


###################################################
### code chunk number 284: biostats.rnw:5358-5361
###################################################
Vmax = 0.9
Km = 0.12
curve(Vmax * x/(Km + x),0,5)


###################################################
### code chunk number 285: biostats.rnw:5369-5370
###################################################
grades = c(86.3, 79.9, 92.4, 85.5, 96.2, 68.9)


###################################################
### code chunk number 286: biostats.rnw:5374-5377
###################################################
temp = c(2.17, 1.53, 2.02, 1.76, 1.81, 1.55, 2.07, 1.75, 2.05, 1.96)
my.coons = data.frame(Mass = temp)
write.csv(my.coons,"raccoons.csv")


###################################################
### code chunk number 287: biostats.rnw:5398-5399
###################################################
cheetahs = c(102, 107, 109, 101, 112)


###################################################
### code chunk number 288: biostats.rnw:5403-5404
###################################################
order(cheetahs)


###################################################
### code chunk number 289: biostats.rnw:5408-5409
###################################################
signif(cheetahs,2)


###################################################
### code chunk number 290: biostats.rnw:5413-5420
###################################################
colheader = c("Low","Med","High") 
col1 = c(12, 32, 22, 19, 27, 31, 25)
col2 = c(54, 34, 45, 69, 83, 44, 22)
col3 = c(87, 78, 59, 82, 64, 73, 77)
my.dat=data.frame(col1,col2,col3)
colnames(my.dat) = c("Low","Med","High")
my.dat= stack(my.dat)


###################################################
### code chunk number 291: biostats.rnw:5423-5424
###################################################
my.dat[order(my.dat$values),]


###################################################
### code chunk number 292: biostats.rnw:5428-5429
###################################################
subset(my.dat,values < 30)$ind


###################################################
### code chunk number 293: biostats.rnw:5439-5446
###################################################
flag = c(11.1, 9.9, 8.7, 8.6, 7.0, 4.3)
cat("The mean = ",mean(flag),"\n")
cat("The standard deviation = ",sd(flag),"\n")
cat("The median = ",median(flag),"\n")
SEM = sd(flag)/sqrt(length(flag))
cat("The SEM = ",SEM,"\n")
cat("The IQR = ",IQR(flag),"\n")


###################################################
### code chunk number 294: biostats.rnw:5449-5450
###################################################
shapiro.test(flag)


###################################################
### code chunk number 295: biostats.rnw:5454-5455
###################################################
set.seed(100)


###################################################
### code chunk number 296: biostats.rnw:5458-5462
###################################################
my.ht = 68 # Hartvigsen's height in inches
my.dat = rnorm(1000, mean = 68, sd = 5)
a = boxplot(my.dat) # not showing histogram
a$out # these are the outliers


###################################################
### code chunk number 297: biostats.rnw:5467-5477
###################################################
library(UsingR)
pop = read.csv("worldpop.csv")
head(names(pop)) # I see R puts an X in front of year
my.dat = pop$X2012 # I can deal
ln.my.dat = log(my.dat) # let's log these (natural log)
par(mfrow = c(1,2))
simple.eda(my.dat)
simple.eda(log(my.dat))
par(mfrow = c(1,1))
shapiro.test(log(my.dat))


###################################################
### code chunk number 298: biostats.rnw:5484-5486
###################################################
my.dat = runif(1000)
IQR(my.dat)


###################################################
### code chunk number 299: biostats.rnw:5516-5522
###################################################
control = c(2,3,4,5,6,7)
trmt = c(5,3,4,5,6,9)
boxplot(control, trmt, cex.lab = 1.5,
        names = c("Control","Treatment"),
        xlab = "Treatments", ylab = "Number of Colonies",
        main = "Bacterial Colony Density")


###################################################
### code chunk number 300: biostats.rnw:5535-5539
###################################################
barplot(c(10,15,18),xlab = "Treatment", ylim = c(0,20),
        names = c("50 ml", "100 ml", "200 ml"),
        ylab = "Plant Height (cm)", cex.lab = 1.5)
abline(h=0)


###################################################
### code chunk number 301: biostats.rnw:5550-5552
###################################################
Ah = c(1916,1563,1436,6035,3833,5031,13326,3130,6020,1889)
hist(Ah) # graph not shown


###################################################
### code chunk number 302: biostats.rnw:5557-5558
###################################################
wilcox.test(Ah, mu = 20000)


###################################################
### code chunk number 303: biostats.rnw:5564-5566
###################################################
lf1 = c(27, 26, 20, 24, 28, 29)
lf5 = c(30, 34, 28, 35, 42, 40)


###################################################
### code chunk number 304: biostats.rnw:5592-5598
###################################################
U1 = c(81.0, 80.1, 86.1, 78.9, 86.8, 84.6, 79.3, 
       84.0, 95.4, 70.3, 86.8, 78.1)
U2 = c(94.4, 76.7, 70.0, 88.8, 73.7, 86.3, 85.7,
       74.0, 79.5, 75.9, 68.1, 75.9)
shapiro.test(U1)$p.value # normally distributed
shapiro.test(U2)$p.value # normally distributed


###################################################
### code chunk number 305: biostats.rnw:5621-5629
###################################################
College = c(1330, 1320, 1350, 1370, 1390, 1470, 1340, 
            1470, 1450, 1360)
University = c(1190, 1160, 1140, 1390, 1360, 1320, 1150, 
               1240, 1380, 1180)
boxplot(College,University, 
        names = c("College","University"))
shapiro.test(College)
shapiro.test(University)


###################################################
### code chunk number 306: biostats.rnw:5673-5675
###################################################
milk.dat = read.csv("milkdat.csv")
shapiro.test(milk.dat$Farm.1)$p.value # same for others


###################################################
### code chunk number 307: biostats.rnw:5680-5688
###################################################
milk.dat2 = stack(milk.dat)
names(milk.dat2) = c("Bac.count","Farm")

# Two ways to get the Farm 1 bacterial count data
# milk.dat2[milk.dat2$Farm == "Farm 1",]$Bac.count
# subset(milk.dat2, Farm == "Farm 1")$Bac.count
milk.aov = aov(milk.dat2$Bac.count ~ milk.dat2$Farm)
summary(milk.aov)


###################################################
### code chunk number 308: biostats.rnw:5693-5699
###################################################
M = tapply(milk.dat2$Bac.count, milk.dat2$Farm,mean)
barplot(M, ylim = c(0,35), cex.lab = 1.5,
        xlab = "Farm",ylab = "Bacterial Count (cfu/ml)",
        names = c("Farm 1","Farm 2","Farm 3",
                  "Farm 4","Farm 5"))
abline(h=0)


###################################################
### code chunk number 309: biostats.rnw:5703-5706
###################################################
my.sticks = read.csv("sticklebacks.csv")
a = subset(my.sticks, Temp == "C" & pH == "H")$Length
shapiro.test(a)$p.value # repeat for other samples


###################################################
### code chunk number 310: biostats.rnw:5711-5721
###################################################
par(mfrow = c(1,2))
M = tapply(my.sticks$Length,my.sticks$Temp,mean)
barplot(M,xlab = "Temperature",ylab = "Length (cm)",
  ylim = c(0,6), names = c("Cold","Warm"),cex.lab = 1.5)
abline(h=0)
M = tapply(my.sticks$Length,my.sticks$pH,mean)
barplot(M,xlab = "pH",ylab = "Length (cm)", 
  ylim = c(0,6), names = c("High","Low"),cex.lab = 1.5)
abline(h=0)
par(mfrow = c(1,1))


###################################################
### code chunk number 311: biostats.rnw:5733-5737
###################################################
femur = c(38,56,59,64,74)
humerus = c(41,63,70,72,84)
plot(femur,humerus)
cor.test(femur,humerus)


###################################################
### code chunk number 312: biostats.rnw:5743-5748
###################################################
year = 2004:2009
pairs = c(955, 995, 1029, 1072, 1102, 1130)
plot(year,pairs,pch = 16, cex = 1.5, cex.lab = 1.5,
  ylim = c(0,1200), # sometimes your reader wants this
  xlab = "Year",ylab = "Number Breeding Pairs")


###################################################
### code chunk number 313: biostats.rnw:5752-5754
###################################################
my.slope = lm(pairs~year)$coef[2]
cat("The rate is ",my.slope,"pairs per year.\n")


###################################################
### code chunk number 314: biostats.rnw:5770-5773
###################################################
obs = c(295,86) # observed counts
expP = c(0.75,0.25) # expected probabilities
chisq.test(obs, p = expP)


###################################################
### code chunk number 315: biostats.rnw:5781-5784
###################################################
obs = c(315,101,108,32)
expP = c(9/16,3/16,3/16,1/16)
chisq.test(obs,p = expP)


###################################################
### code chunk number 316: biostats.rnw:5789-5792
###################################################
a = chisq.test(obs,p= expP) # store return values
names(a) # find which variable contains expected values
round(a$exp,0) # round of decimals


###################################################
### code chunk number 317: biostats.rnw:5796-5799
###################################################
obs = c(57,330,279,42)
expP = c(.1,.4,.4,.1)
chisq.test(obs, p = expP)


###################################################
### code chunk number 318: biostats.rnw:5807-5809
###################################################
a = chisq.test(obs,p= expP) # store return values
round(a$exp,0) # round of decimals


###################################################
### code chunk number 319: biostats.rnw:5817-5823
###################################################
my.stats = function(x) {
  my.mean = mean(x)
  my.sd = sd(x)
  my.SEM = my.sd/sqrt(length(x))
  return(data.frame(my.mean,my.sd,my.SEM))
}


###################################################
### code chunk number 320: biostats.rnw:5827-5839
###################################################
library(plotrix)
A = c(8.8, 8.4, 7.9, 8.7, 9.1, 9.6)
B = c(10.6, 9.8, 10.1, 8.4, 9.6, 10.2)
C = c(11.6, 11.4, 9.1, 10.7, 14.9, 12.9)
my.dat = data.frame(A,B,C)
my.dat = stack(my.dat)
names(my.dat) = c("Clotting","Drug")
M = tapply(my.dat$Clotting,my.dat$Drug,mean)
S = tapply(my.dat$Clotting,my.dat$Drug,sd)
SEM = S/sqrt(6) # 6 counts per farm
CI95 = qt(0.975,df=5)*SEM
clot.aov = aov(my.dat$Clotting ~ my.dat$Drug)


###################################################
### code chunk number 321: biostats.rnw:5852-5859
###################################################
TukeyHSD(clot.aov)
a = barplot(M, ylim = c(0,15), cex.lab = 1.5,
         xlab = "Drug",ylab = "Clotting Time (min)")
abline(h=0)
my.letters = c("a","a","b")
plotCI(a,M,CI95,add = T, pch = NA)
text(a,M+CI95,my.letters,pos = 3)


###################################################
### code chunk number 322: biostats.rnw:5864-5874
###################################################
speed = c(20,30,40,50,60)
mpg = c(24.1,28.1,33.1,33,31)
fit = nls(mpg ~ a*speed^2 + b*speed + c, 
          start = list(a = -0.5, b = 1, c = 0))
a = coef(fit)[1]
b = coef(fit)[2]
c = coef(fit)[3]
# Set derivative equal to zero: 2*a*speed + b = 0
# Find speed, given a and b: speed = -b/(2*a)
cat("Maximum mpg at", round(-b/(2*a),1), "mph.\n")


###################################################
### code chunk number 323: biostats.rnw:5879-5884
###################################################
N0= 50
r = 0.82
K = 1000
curve((K * N0 * exp(r*x))/(K + N0 * (exp(r*x)-1)),0,10,
      ylab = "N", xlab = "Time", cex.lab = 1.5)


###################################################
### code chunk number 324: biostats.rnw:5889-5901
###################################################
attach(Puromycin)
untr = Puromycin[state == "untreated",] # or use 
# dat = subset(Puromycin,state == "untreated")
tr = Puromycin[state == "treated",]
par(mfrow = c(1,2))
plot(tr$conc,tr$rate, ylim = c(0,220), pch = 16,
     xlab = "Concentration", ylab = "Rate", 
     main = "Treated")
plot(untr$conc,untr$rate, ylim = c(0,220), pch = 16,
     xlab = "Concentration", ylab = "Rate",
     main = "Untreated")
par(mfrow = c(1,1))


###################################################
### code chunk number 325: biostats.rnw:5909-5910
###################################################
sum(1:100)


###################################################
### code chunk number 326: biostats.rnw:5915-5920
###################################################
the.sum = 0 # recall "sum" is a function, so avoid
for (i in 1:100) {
  the.sum = the.sum + i
}
cat("The sum is ",the.sum,"\n")


###################################################
### code chunk number 327: biostats.rnw:5936-5944
###################################################
fib = c(0,1) # start the sequence
for (i in 3:10) { # do 8 more times
  fib[i] = sum(fib[i-1],fib[i-2])
}
par(mfrow = c(1,2))
plot(fib)
plot(log(fib))
par(mfrow = c(1,1))


###################################################
### code chunk number 328: biostats.rnw:5949-5953
###################################################
x = 0:10
N = 100*1.45^x
plot(x,N,pch = 16, cex.lab = 1.5,
     xlab = "Year", ylab = "Population Size")


###################################################
### code chunk number 329: biostats.rnw:5958-5962
###################################################
x = 0:10
N = 100*1.45^x
plot(x,N,pch = 16, cex.lab = 1.5,
     xlab = "Year", ylab = "Population Size")


###################################################
### code chunk number 330: biostats.rnw:5967-5974
###################################################
N = 0.5
lambda = 3.75
for (i in 2:100) {
  N[i] = N[i-1]*lambda*(1 - N[i-1])
}
plot(N,type = "l", xlab = "Time Step", ylim = c(0,1),
     cex.lab = 1.5)


