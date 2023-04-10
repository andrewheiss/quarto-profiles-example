library(targets)
library(tarchetypes)

list(
  tar_quarto(document_nice, path = ".", profile = "nice"),
  tar_quarto(document_ugly, path = ".", profile = "ugly")
)
