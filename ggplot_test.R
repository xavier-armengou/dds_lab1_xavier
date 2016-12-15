library("ggplot2")
# now we can use functions exported by this package

exploitdb <- "https://raw.githubusercontent.com/offensive-security/exploit-database/master/files.csv"
download.file(exploitdb, destfile = "db")
db <- read.csv("./db", header = T)
db_aggr <- dplyr::count(db, platform, sort = T)
ggplot(db_aggr, aes(x="", y=n, fill=platform))+ geom_bar(width = 1, stat = "identity")

# db_aggr <- dplyr::count(db, platform, sort = T)
# ggplot(head(db_aggr), aes(x=platform, y=n, fill=platform)) + geom_bar(stat = "identity")

