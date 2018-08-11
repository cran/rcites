## ----setup, echo = FALSE-------------------------------------------------
NOT_CRAN <- identical(tolower(Sys.getenv("NOT_CRAN")), "true")
knitr::opts_chunk$set(
  purl = NOT_CRAN,
  eval = NOT_CRAN,
  fig.align = "center",
  comment = "#> "
)

## ----qtxla---------------------------------------------------------------
library(rcites)
res1 <- sppplus_taxonconcept(query_taxon = "Loxodonta africana")
res1

## ----qtxla2--------------------------------------------------------------
res2 <- sppplus_taxonconcept(query_taxon = "Loxodonta africana", appendix_only = TRUE)
res2

## ----qtxav---------------------------------------------------------------
res3 <- sppplus_taxonconcept(query = "Amazilia versicolor", appendix_only = TRUE)
res3

## ----qtxhs---------------------------------------------------------------
res <- sppplus_taxonconcept(query = "Homo Sapiens")

## ------------------------------------------------------------------------
leg1 <- taxon_cites_legislation(tax_id = '4521')
leg2 <- taxon_eu_legislation(tax_id = '3210', simplify = T)

## ----map, message = FALSE, fig.width = 6.4, fig.height = 7.6, fig.align="center"----
par(las = 1)
suppressPackageStartupMessages(library(rworldmap))
map1 <- as.data.frame(taxon_distribution('4521'))
map2 <- joinCountryData2Map(map1, joinCode="ISO2", nameJoinColumn = "iso_code2", nameCountryColumn = "name")
map2@data$iso2 <- unlist(lapply(map2$iso_code2, is.null))
plot(c(-23, 62), c(45, -40), type = "n", main = "Loxodonta africana",
  xlab = "Longitude", ylab = "Latitude")
plot(map2, add = T)
plot(map2[!map2$iso2,], col = "#bda25d", add = T)

## ------------------------------------------------------------------------
ref2 <- taxon_references(tax_id = '3210', simplify = T)
length(ref2$distribution$reference)
length(ref2$taxonomic$citation)
ref2$taxonomic$citation

## ------------------------------------------------------------------------
vc_sp <- c("Amazilia versicolor", "Loxodonta africana")
res <- lapply(vc_sp, function(x) sppplus_taxonconcept(query_taxon = x, appendix_only = TRUE))
do.call(rbind, res)

## ------------------------------------------------------------------------
vc_id <- c(4521, 3210)
res <- lapply(vc_id,
    function(x) unlist(
      taxon_eu_legislation(tax_id = x, type = "listings", simplify = TRUE)
    )[1:6]
    )
do.call(rbind, res)

