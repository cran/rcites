token <- readRDS("inst/tmp/token.rds")
tax <- sppplus_taxonconcept(token = token, query_taxon = 'Loxodonta africana', appendix_only = TRUE
hom <- sppplus_taxonconcept(token = token, query_taxon = 'Homo sapiens', appendix_only = TRUE)
hom <- sppplus_taxonconcept(token = token, query_taxon = 'Mammalia', appendix_only = TRUE)
taxon_distribution(token = token, tax_id = '4521')
sppplus_taxonconcept(token, query = "Amazilia versicolor")
##
tcl <- taxon_cites_legislation(token = token, tax_id = '4521', simplify = T)
