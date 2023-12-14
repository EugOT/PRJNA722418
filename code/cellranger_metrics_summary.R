library(tidyverse)
metrics_summary_SRR14252354 <- read_csv("/data/PRJNA722418/cellranger/SRR14252354/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252354")
metrics_summary_SRR14252355 <- read_csv("/data/PRJNA722418/cellranger/SRR14252355/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252355")
metrics_summary_SRR14252356 <- read_csv("/data/PRJNA722418/cellranger/SRR14252356/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252356")
metrics_summary_SRR14252357 <- read_csv("/data/PRJNA722418/cellranger/SRR14252357/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252357")
metrics_summary_SRR14252358 <- read_csv("/data/PRJNA722418/cellranger/SRR14252358/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252358")
metrics_summary_SRR14252359 <- read_csv("/data/PRJNA722418/cellranger/SRR14252359/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252359")
metrics_summary_SRR14252360 <- read_csv("/data/PRJNA722418/cellranger/SRR14252360/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252360")
metrics_summary_SRR14252362 <- read_csv("/data/PRJNA722418/cellranger/SRR14252362/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252362")
metrics_summary_SRR14252363 <- read_csv("/data/PRJNA722418/cellranger/SRR14252363/outs/metrics_summary.csv") %>% mutate(Run = "SRR14252363")
metrics_summary <-
  bind_rows(
    metrics_summary_SRR14252354,
    metrics_summary_SRR14252355,
    metrics_summary_SRR14252356,
    metrics_summary_SRR14252357,
    metrics_summary_SRR14252358,
    metrics_summary_SRR14252359,
    metrics_summary_SRR14252360,
    metrics_summary_SRR14252362,
    metrics_summary_SRR14252363)

metrics_summary |>
  select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, "/data/PRJNA722418/metrics_summary.tsv")

