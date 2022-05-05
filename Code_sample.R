#单样本t检验+秩和检验
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

#小练习
attach(vitcap)
t.test(vital.capacity~group, conf = 0.99, data = vitcap)

wilcox.test(react)
wilcox.test(vital, capacity~group, data = vitcap)


##统计描述
mean()
sd()
median()
quantile()

#数值变量转为因子变量
library(ISwR)
attach(juul)
juul <- transform(juul,
                  sex=factor(sex,labels=c("M","F")),
                  menarche=factor(menarche,labels=c("No","Yes")),
                  tanner=factor(tanner,labels=c("I","II","III","IV","V")))


