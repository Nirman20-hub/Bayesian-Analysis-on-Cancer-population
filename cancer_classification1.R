#######description of the variables in the tables

#Site<-site of the cancer
#Male_no<-no of males having the cancer accordindly
#Female_no<-no of females having the cancer accordindly
#per_trc_m<-percentage to total tobacco related cancer in Males
#per_trc_f<-percentage to total tobacco related cancer in females
#per_allsite_m<-percentage to all sites to cancer in male
##per_allsite_f<-percentage to all sites to cancer in female
#total<-total of both genders
#total_per_trc<-percentage to total tobacco related cancer for both genders
#total_per_allsite<-percentage to all sites to cancer for both genders

######

library(readxl)
data_15 <- read.csv(file.choose())
head(data_13)
data_13<-data_13[,-9]
data_13<-is.data.frame(data_13)
total<-(data_13$Male_no+data_13$Female_no)
total
data_13<-cbind(data_13,total)
total_per_trc<-round((total[1:10]/5668)*100,digits = 1)

total_per_trc<-append(total_per_trc,c(NA,NA))
data_13<-cbind(data_13,total_per_trc)
data_13<-cbind(data_13,total_per_allsite)
data_13
##shannon index/simpson(replacing the index)
library(vegan)
##per trc
diversity_per_trc_m<-diversity(data_13[1:10,3],'shannon')
diversity_per_trc_m

diversity_per_trc_f<-diversity(data_13[1:10,6],'shannon')
diversity_per_trc_f

diversity_per_trc_both<-diversity(data_13[1:10,9],'shannon')
diversity_per_trc_both
###per_all_site
diversity_per_allsite_m<-diversity(data_13[1:10,4],'shannon')
diversity_per_allsite_m
##
diversity_per_allsite_f<-diversity(data_13[1:10,7],'shannon')
diversity_per_allsite_f
##
diversity_per_allsite_both<-diversity(data_13[1:10,10],'shannon')
diversity_per_allsite_both

##combining the shannon index and shannon index
shn_row<-c("shannon",NA,1.979743,1.977898,NA,1.867935,1.858298,NA,1.966942,1.981468)
data_13<-rbind(data_13,shn_row)
simp_row<-c("simpson",NA,0.842482,0.8419502,NA,0.817956,0.8160009,NA,0.8397038,0.84158)
data_13<-rbind(data_13,simp_row)
head(data_13)

#####
data_14<-read.csv(file.choose())
head(data_14)

total<-(data_14$Male_no+data_14$Female_no)
sum(total[1:10])
data_14<-cbind(data_14,total)

total_per_trc<-round((total[1:10]/5416)*100,digits = 1)
total_per_trc
total_per_allsite<-round((total[1:10]/20446)*100,digits = 1)
sum(total[1:10])
sum(total_per_trc)##to check sum is correct
total_per_trc<-append(total_per_trc,c(NA,NA))
total_per_allsite<-append(total_per_allsite,c(NA,NA))
data_14<-cbind(data_14,total_per_trc)
data_14<-cbind(data_14,total_per_allsite)
data_14
####shannon and simpsosn index
diversity_per_trc_m<-diversity(data_14[1:10,3],'simpson')
diversity_per_trc_m

diversity_per_trc_f<-diversity(data_14[1:10,6],'simpson')
diversity_per_trc_f

diversity_per_trc_both<-diversity(data_14[1:10,9],'simpson')
diversity_per_trc_both
###per_all_site
diversity_per_allsite_m<-diversity(data_14[1:10,4],'simpson')
diversity_per_allsite_m
##
diversity_per_allsite_f<-diversity(data_14[1:10,7],'simpson')
diversity_per_allsite_f
diversity_per_allsite_both<-diversity(data_14[1:10,10],'simpson')
diversity_per_allsite_both
###combining shannon and simpson
shan_row<-c("Shannon",NA,1.974554,1.970013,NA,1.861586,1.886129,NA,1.964491,1.964197)
simps_row<-c("simpson",NA,0.8369353,0.83615,NA,0.81382,0.8175976,NA,0.8353398,0.8355144)
data_14<-rbind(data_14,shan_row)
data_14<-rbind(data_14,simps_row)
data_14
######
data_15<-read.csv(file.choose())
head(data_15)
total<-data_15$Male_No+data_15$Female_No
total

data_15<-cbind(data_15,total)

total_per_trc<-round((total[1:10]/5662)*100,digits = 1)
total_per_allsite<-round((total[1:10]/21538)*100,digits = 1)

total_per_trc<-append(total_per_trc,c(NA,NA))
total_per_allsite<-append(total_per_allsite,c(NA,NA))
data_15<-cbind(data_15,total_per_trc)
data_15<-cbind(data_15,total_per_allsite)
data_15
####shannon and simpsosn index
diversity_per_trc_m<-diversity(data_15[1:10,3],'simpson')
diversity_per_trc_m

diversity_per_trc_f<-diversity(data_15[1:10,6],'simpson')
diversity_per_trc_f

diversity_per_trc_both<-diversity(data_15[1:10,9],'simpson')
diversity_per_trc_both
###per_all_site
diversity_per_allsite_m<-diversity(data_15[1:10,4],'simpson')
diversity_per_allsite_m
##
diversity_per_allsite_f<-diversity(data_15[1:10,7],'simpson')
diversity_per_allsite_f
diversity_per_allsite_both<-diversity(data_15[1:10,10],'simpson')
diversity_per_allsite_both
##combining shannon and simpson
shann_row<-c("shannon",NA,1.953739,1.957783,NA,1.85155,1.853046,NA,1.951896,1.950093)
sim_row<-c("simpson",NA,0.8331315,0.834385,NA,0.8124268,0.8126363,NA,0.833514,0.8329743)
data_15<-rbind(data_15,shann_row)
data_15<-rbind(data_15,sim_row)
data_15
