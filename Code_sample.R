#单样本t检验
daily.intake <- c(
  5260,5470,5640,6180,6390,6515,6805,7515,7515,8230,8770
)
mean(daily.intake)
sd(daily.intake)
quantile(daily.intake)

t.test(daily.intake, mu=7725)
wilcox.test(daily.intake, mu=7725)

#两样本t检验
library(ISwR)
attach(energy)
energy
t.test(expend~stature)

t.test(expend~stature, var.equal=T)

var.test(expend~stature)

wilcox.test(expend~stature)

#方差齐性检验 var.test()

#配对样本t检验
attach(intake)
intake
post - pre
t.test(pre, post, paired=T)

t.test(pre, post) #WRONG!

wilcox.test(pre, post, paired=T)
