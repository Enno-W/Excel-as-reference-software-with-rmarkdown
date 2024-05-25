# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


xlsx_to_bib <- function(excel_file, bib_file = "bibliography.bib", sheet = 2, column = 1, first_row = 2) {

  if (!file.exists(excel_file)) {
    stop("The specified Excel file does not exist.")
  }

  # Import data from the first column of the second sheet, ignoring the first row
  excel_data <- xlsx::read.xlsx(excel_file, sheetIndex = sheet, colIndex = column, startRow = first_row, as.data.frame = TRUE, header = F)

  # Extract the bibtex entrys
  citation_keys <- as.character(stats::na.omit(excel_data[, 1]))

  # Write citation keys to the specified .bib file
  writeLines(citation_keys, bib_file)

  message("Bibliography has been successfully written to ", bib_file)
}
