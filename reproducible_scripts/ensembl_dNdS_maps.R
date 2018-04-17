# The following code was run on an Ubuntu Linux machine with 8 cores
# Date: 13/04/2018


# retrieve all available coding sequences (CDS) from all available species 
# from ENSEMBL
biomartr::meta.retrieval.all(db = "ensembl", type = "CDS")

# store doc_* files separately
species_files <- list.files("Ensembl")
doc_files <- species_files[stringr::str_detect(species_files, "doc_")]
species_files_all <- species_files[!stringr::str_detect(species_files, "doc_")]
dir.create("doc_files")
file.rename(file.path("Ensembl", doc_files), file.path("doc_files", doc_files))

# create new output folder to store results
dir.create("dNdS_maps")

# run all-versus-all comparisons (including self-comparison as control)
for (i in seq_len(length(species_files_all))) {
  orthologr::map.generator(
    query_file      = file.path("Ensembl", species_files_all[i]),
    subjects.folder = "Ensembl",
    eval            = "1E-5", # e value threshold for ortholog detection
    ortho_detection = "RBH", # use conservative method: BLAST best reciprocal hit
    aa_aln_type      = "pairwise",
    aa_aln_tool      = "NW", # use Needleman-Wunsch Algorithm for global codon alignment
    codon_aln_tool   = "pal2nal", 
    dnds_est.method  = "Comeron", # use robust dN/dS estimation (Comeron's method)
    output.folder    = "dNdS_maps",
    comp_cores       = 12
  )
  
}

