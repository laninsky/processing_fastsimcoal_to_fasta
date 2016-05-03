### Parameter block
workingdir <- "C:\\Users\\a499a400\\Dropbox\\Kaloula frogs\\fastimcoal\\reviewer_simulations\\scenario"
scenarioname <- "scenario_1_1.arp"
deffile <- "C:\\Users\\a499a400\\Dropbox\\Kaloula frogs\\fastimcoal\\reviewer_simulations\\scenario.def"
noofloci <- 1785
locuslength <- 750
missing5 <- 743
missing10 <- 295
missing15 <- 202
missing20 <- 152
missing25 <- 119
### Parameter block

library(stringr)
setwd(workingdir)
arlfile <- readLines(scenarioname)
notaxa <- sum(grepl("SampleData",arlfile))
nobases <- noofloci*locuslength
tempframe <- matrix(NA,nrow=(notaxa*2),ncol=nobases)

j <- 1
for (i in 1:length(arlfile)) {
if (grepl("SampleData",arlfile[i],fixed=TRUE)==TRUE) {
temp <- unlist(strsplit(arlfile[i+1],"\\s+"))
tempframe[j,] <- unlist(strsplit(temp[3],""))
temp <- unlist(strsplit(arlfile[i+2],"\\s+"))
tempframe[(j+1),] <- unlist(strsplit(temp[3],""))
j <- j+2
}
}

taxaname <- matrix(NA,nrow=(notaxa*2),ncol=1)
temptaxaname <- as.matrix(read.table(deffile))[1,]
j <- 1
for (i in 1:length(temptaxaname)) {
taxaname[j,1] <- paste(">",temptaxaname[i],"_1",sep="")
taxaname[(j+1),1] <- paste(">",temptaxaname[i],"_2",sep="")
j <- j+2
}

missing <- paste(rep.int("?",750),collapse="")
notaxa <- notaxa*2

j <- 1
l <- 1
for (i in 1:missing5) {
name <- paste("locus",j,".fasta",sep="")
j <- j+1
temp <- matrix(NA,nrow=(notaxa*2),ncol=1)
temp[seq(1,(notaxa*2),2),1] <- taxaname
for (k in 1:notaxa) {
if (runif(1)<0.05) {
temp[(k*2),1] <- missing
} else {
temp[(k*2),1] <- paste(tempframe[k,l:(l+749)],collapse="")
}
}
l <- l+750
write.table(temp, name,quote=FALSE, col.names=FALSE,row.names=FALSE, append=TRUE)
}

for (i in 1:missing10) {
name <- paste("locus",j,".fasta",sep="")
j <- j+1
temp <- matrix(NA,nrow=(notaxa*2),ncol=1)
temp[seq(1,(notaxa*2),2),1] <- taxaname
for (k in 1:notaxa) {
if (runif(1)<0.1) {
temp[(k*2),1] <- missing
} else {
temp[(k*2),1] <- paste(tempframe[k,l:(l+749)],collapse="")
}
}
l <- l+750
write.table(temp, name,quote=FALSE, col.names=FALSE,row.names=FALSE, append=TRUE)
}

for (i in 1:missing15) {
name <- paste("locus",j,".fasta",sep="")
j <- j+1
temp <- matrix(NA,nrow=(notaxa*2),ncol=1)
temp[seq(1,(notaxa*2),2),1] <- taxaname
for (k in 1:notaxa) {
if (runif(1)<0.15) {
temp[(k*2),1] <- missing
} else {
temp[(k*2),1] <- paste(tempframe[k,l:(l+749)],collapse="")
}
}
l <- l+750
write.table(temp, name,quote=FALSE, col.names=FALSE,row.names=FALSE, append=TRUE)
}

for (i in 1:missing20) {
name <- paste("locus",j,".fasta",sep="")
j <- j+1
temp <- matrix(NA,nrow=(notaxa*2),ncol=1)
temp[seq(1,(notaxa*2),2),1] <- taxaname
for (k in 1:notaxa) {
if (runif(1)<0.2) {
temp[(k*2),1] <- missing
} else {
temp[(k*2),1] <- paste(tempframe[k,l:(l+749)],collapse="")
}
}
l <- l+750
write.table(temp, name,quote=FALSE, col.names=FALSE,row.names=FALSE, append=TRUE)
}

for (i in 1:missing25) {
name <- paste("locus",j,".fasta",sep="")
j <- j+1
temp <- matrix(NA,nrow=(notaxa*2),ncol=1)
temp[seq(1,(notaxa*2),2),1] <- taxaname
for (k in 1:notaxa) {
if (runif(1)<0.25) {
temp[(k*2),1] <- missing
} else {
temp[(k*2),1] <- paste(tempframe[k,l:(l+749)],collapse="")
}
}
l <- l+750
write.table(temp, name,quote=FALSE, col.names=FALSE,row.names=FALSE, append=TRUE)
}

for (m in j:noofloci) {
name <- paste("locus",j,".fasta",sep="")
j <- j+1
temp <- matrix(NA,nrow=(notaxa*2),ncol=1)
temp[seq(1,(notaxa*2),2),1] <- taxaname
for (k in 1:notaxa) {
temp[(k*2),1] <- paste(tempframe[k,l:(l+749)],collapse="")
}
l <- l+750
write.table(temp, name,quote=FALSE, col.names=FALSE,row.names=FALSE, append=TRUE)
}
