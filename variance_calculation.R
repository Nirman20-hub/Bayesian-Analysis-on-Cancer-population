###loading data 2015
library(readr)
mod_data_13 <- read_csv("mod_data_13.csv")
View(mod_data_13)
###for data 2015
gender<-main_table$total
##setting the fucntion for calclating variance
s=10
n<-sum(gender[1:s])
p<-(gender[1:s])/n 
p

##variance between sites
var<- sum(p*(1 - p)*((1 + log(n*p))^2 + log(n)^2))/n
var
###combining with dataframe
variance<-c('variance',0.02339179,0.06126095,0.01964209, NA,NA)
main_table<-rbind(main_table,variance)
mod_data_13<-rbind(mod_data_13,variance)
mod_data_13
main_table$total<-as.numeric(main_table$total)
is.numeric(main_table$Female_No)
######for site wise (between gender)
n<-sum(main_table$Male_No[1:s])
m<-sum(main_table$Female_No[1:s])
variance<-as.numeric(variance)
is.numeric(variance)
p1<-main_table$Male_No[1:s]/n###proportion for male
p2<-main_table$Female_No[1:s]/m##proportion for female
p1

term1<- (p1*(1 - p1)*((1 + log(n*p1))^2 + log(n)^2))/n
term2<- (p2*(1 - p2)*((1 + log(m*p2))^2 + log(m)^2))/m
var_btwn<-term1 + term2
var_btwn
var_btwn<-c(var_btwn,rep(NA,4))
var_btwn<-var_btwn*100
main_table<-cbind(main_table,var_btwn)
head(mod_data_13)
mod_data_13<-subset(mod_data_13,select = -15)


###
install.packages("writexl")
library("writexl")
write_xlsx(main_table,"C:/Users/NIRMAN/Documents/cancer_classification\\main_table.xlsx")


