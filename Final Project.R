rmarkdown::render("Final-Project.Rmd", output_format = "pdf_document", output_file = "Final-Project-with-code.pdf", params = list(include=TRUE))
rmarkdown::render("Final-Project.Rmd", output_format = "pdf_document", output_file = "Final-Project-without-code.pdf", params = list(include=FALSE))

rmarkdown::render("Final-Project.Rmd", output_format = "html_document", output_file = NULL, output_dir = "Final-Project.doc", params = list(include=TRUE))

