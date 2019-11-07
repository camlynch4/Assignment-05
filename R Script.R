rm(list=ls(all=TRUE))
cat("\014")
if (!require("data.table")) install.packages("data.table")
library("data.table")

header <- read.table("CES0500000003.csv", header = TRUE,
                     sep=",", nrow = 1)
CES0500000003 <- fread("CES0500000003.csv",
                                 skip=1, sep=",",header=FALSE,
                                 data.table=FALSE)
setnames(CES0500000003, colnames(header))
rm(header)
