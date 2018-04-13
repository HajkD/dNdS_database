# The following code was run on an Ubuntu Linux machine with 15 cores
# Script termination time: ~ 12 hours
# Date: 10/04/2018

install.packages("biomartr")
library(biomartr)
library(orthologr)
# download all coding sequences for Mus musculus
Mmusculus_file <- biomartr::getCDS(organism = "Mus musculus", path = getwd())
# download all coding sequences for Homo sapiens
Hsapiens_file <- biomartr::getCDS(organism = "Homo sapiens", path = getwd())
# compute dN/dS values for Homo sapiens versus Mus musculus
Hs_vs_Mm_dNdS <- 
  orthologr::dNdS(query_file      = Hsapiens_file,
                  subject_file    = Mmusculus_file,
                  ortho_detection = "RBH", 
                  aa_aln_type     = "pairwise",
                  aa_aln_tool     = "NW", 
                  codon_aln_tool  = "pal2nal", 
                  dnds_est.method = "Comeron", 
                  comp_cores      = 15 )
# store result in Excel readable csv file
install.packages("readr")
readr::write_excel_csv(Hs_vs_Mm_dNdS, "Hs_vs_Mm_dNdS.csv")
