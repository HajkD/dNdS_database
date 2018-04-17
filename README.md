# Genome wide synonymous versus non-synonymous substitution rates `dN/dS` 
## A collection of genome wide `dN/dS` calculations of orthologous genes generated with the comparative genomics tool [orthologr](https://github.com/HajkD/orthologr)

This page hosts a collection of synonymous versus non-synonymous substitution rate `dN/dS` maps
of several pairwise genome comparisons generated with [orthologr](https://github.com/HajkD/orthologr).

Users may feel free to use this data for their research purposes.

Please cite the `orthologr` publication when using any of the `dN/dS` maps for your publication:

> Drost et al. 2015. __Evidence for Active Maintenance of Phylotranscriptomic Hourglass Patterns in Animal and Plant Embryogenesis__. _Mol. Biol. Evol._ 32 (5): 1221-1231. [doi:10.1093/molbev/msv012](http://mbe.oxfordjournals.org/content/32/5/1221.abstract?sid=767aea12-1eb3-40be-8c6a-e2861f159b46)

E.g. by referring to orthologr:

> "Synonymous versus non-synonymous substitution rates between species X and species Y were calculated using the R package orthologr (Drost et al., 2015)
using the parameter configuration `eval = 1E-5`, `ortho_detection = "RBH"`, `aa_aln_type = "pairwise"`, `aa_aln_tool = "NW"`, `codon_aln_tool = "pal2nal"`, and `dnds_est.method = "Comeron"`."

The computationally reproducible scripts used to generate each `dNdS map` can be found at [/reproducible_scripts/](/reproducible_scripts/).


## Available `dNdS` maps

### Homo sapiens versus Mus musculus

The genome versions and coding sequence versions used to generate the `H sapiens vs M musculus` `dNdS` maps
can be found at [/data_version/](/data_version/).

After downloading the file [Hs_vs_Mm_dNdS.csv](/dNdS_maps/Hs_vs_Mm_dNdS.csv) users can import the `dNdS` map into `R` by running:

```r
library(readr)
# import dNdS map
Hs_vs_Mm_dNdS <- readr::read_csv("Hs_vs_Mm_dNdS.csv")
Hs_vs_Mm_dNdS
```

```
   query_id                               subject_id                                  dN    dS   dNdS
   <chr>                                  <chr>                                    <dbl> <dbl>  <dbl>
 1 lcl|NC_000001.11_cds_NP_000007.1_4683  lcl|NC_000069.6_cds_NP_031408.1_14466   0.0597 0.829 0.0720
 2 lcl|NC_000001.11_cds_NP_000020.1_10709 lcl|NC_000074.6_cds_NP_031454.3_37923   0.288  0.728 0.395 
 3 lcl|NC_000001.11_cds_NP_000060.2_9320  lcl|NC_000067.6_cds_NP_001074492.1_3195 0.0428 0.457 0.0935
 4 lcl|NC_000001.11_cds_NP_000089.1_4041  lcl|NC_000070.6_cds_NP_034079.2_16642   0.0677 0.449 0.151 
 5 lcl|NC_000001.11_cds_NP_000101.2_5306  lcl|NC_000069.6_cds_NP_740748.1_13710   0.0560 0.530 0.106 
 6 lcl|NC_000001.11_cds_NP_000121.2_8444  lcl|NC_000067.6_cds_NP_032002.1_3789    0.174  0.568 0.306 
 7 lcl|NC_000001.11_cds_NP_000134.2_10958 lcl|NC_000067.6_cds_NP_034339.2_4227    0.0394 0.494 0.0797
 8 lcl|NC_000001.11_cds_NP_000138.2_1730  lcl|NC_000070.6_cds_NP_077205.3_18084   0.0933 0.568 0.164 
 9 lcl|NC_000001.11_cds_NP_000177.2_9184  lcl|NC_000067.6_cds_NP_034018.2_3287    0.268  0.628 0.426 
10 lcl|NC_000001.11_cds_NP_000182.2_1729  lcl|NC_000070.6_cds_NP_032280.2_18085   0.0630 0.545 0.116 
 ... with 25,051 more rows
```




