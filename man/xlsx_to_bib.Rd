\name{xlsx_to_bib}
\alias{xlsx_to_bib}
\title{Export Excel References to a .bib file}
\usage{
xlsx_to_bib (exel_file = "", bib_file = "")
}
\description{
Reads the cell content of the first column of the second sheet in an .xlsx-file and writes it to a .bib-file.
Like this, you can organize and cite your references in Excel.

}
\examples{
xlsx_to_bib(excel_file = "Excel_References.xlsx", bib_file = "bibliography.bib", sheet = NULL, column = NULL, first_row = NULL)

The first argument specifies the Excel-file that contains your .xlsx files, with no default.
The second argument specifies the name of the bibliography you want to export to. The default is "bibliography.bib".
The third argument specifies the sheet number, by default it is sheet 2 (the first sheet is reserved for importing references).
The fourth argument specifies the column. It is 1 by default.
The last column lets you decide from which row to start. It is 2 by default.
}
