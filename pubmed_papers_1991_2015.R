search_year <- function(year, term){
  query <- paste(term, "AND (", year, "[PDAT])")
  entrez_search(db="pubmed", term=query, retmax=0)$count
}

year <- 1991:2015
papersK <- sapply(year, search_year, term="university of kelaniya[AFFL]", USE.NAMES=FALSE)

plot(year, papersK, type='b', main="KLN publications")

search_year <- function(year, term){
  query <- paste(term, "AND (", year, "[PDAT])")
  entrez_search(db="pubmed", term=query, retmax=0)$count
}

year <- 1991:2015
papersC <- sapply(year, search_year, term="university of colombo[AFFL]", USE.NAMES=FALSE)

plot(year, papersC, type='b', main="CMB publications")

plot(year,papersC,type="l",col="red")
points(year,papersC,col="red")
lines(year,papersK, col="green")
points(year,papersK, col="green")
