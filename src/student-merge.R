library(tidyverse) # manipulacion de datos
library(magrittr) # %>% 
library(RcppRoll)


d1=read.table("../data/raw/student-mat.csv",sep=";",header=TRUE)
d2=read.table("../data/raw/student-por.csv",sep=";",header=TRUE)

#d3=merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
#print(nrow(d3)) # 382 students

#str(d3)

d_new <- rbind(d1,d2)
d_new %>% View

d_new %>%  write.csv('../data/processed/student-merge.csv', row.names = F)
