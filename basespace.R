## installing array express packages 
options(download.file.method="wget")

library(BaseSpaceR)
ACCESS_TOKEN<- '41ff17ce7a554c64827dfa022ecbdc0d'
PROJECT_ID<- '21885868' ## Get proj ID from url of the project

aAuth<- AppAuth(access_token = ACCESS_TOKEN)

u <- Users(aAuth)
u
r <- listRuns(aAuth)
r
PROJECT_ID='21885868'
setwd("/Volumes/My Passport/Breast_Cancer_Project/data")
getwd()
selProj <- Projects(aAuth, id = PROJECT_ID, simplify = TRUE)
selProj
f
Result_ID='21885868'
reseq <- listAppResults(aAuth,PROJECT_ID)
reseq
length(reseq)
f<-listFiles(AppResults(reseq))
library(cummeRbund)
length(reseq)
#sampl <- listSamples(selProj, limit= 1000)
#length(sampl)
inSample <- Samples(aAuth, id = Id(sampl), simplify = TRUE)
reseq <- listAppResults(aAuth,PROJECT_ID)
reseq2 <-AppResults(aAuth,id=Id(reseq),simplify = TRUE)
i=0
for(s in reseq2){
  s
  f <- listFiles(s)
  f
  print(Name(f))
  getFiles(aAuth, id= Id(f), destDir = paste(Name(s), as.character(i)), verbose = TRUE)
  i =i +1
}

