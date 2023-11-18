###for data 2014
gender<-main_table$Male_No
gender<-main_table$Female_No
gender<-main_table$total
gender

##setting the fucntion for calclating shannon
s=10
n<-sum(gender[1:s])
p<-(gender[1:s])/n 
p
###shannon estimate 
h=-sum(p*(log(n*p)+(1-p)/(2*n)-log(n)))
h

H<-c('H',1.957309,1.851394,1.951273,NA,NA)###male, female and total trc
main_table<-rbind(main_table,H)
##between gender
n<-sum(main_table$Male_No[1:s])
m<-sum(main_table$Female_No[1:s])

p1<-main_table$Male_No[1:s]/n###proportion for male
p2<-main_table$Female_No[1:s]/m##proportion for female
#shannon estimate
#h=-sum(p*(log(n*p)+(1-p)/(2*n)-log(n)))

t1<-p*(log(n*p)+(1-p)/(2*n)-log(n))
t2<-p*(log(m*p)+(1-p)/(2*m)-log(m))
shan_bet=-(t1+t2)
shan_bet
main_table<-cbind(main_table,shan_bet)
shan_bet<-append(shan_bet,NA,12)

main_table$shan_per_trc<-shan_bet

maintable_2015<-main_table


#######
library("writexl")
write_xlsx(maintable_2015,"C:/Users/NIRMAN/Documents/cancer_classification\\maintable_2015.xlsx")
