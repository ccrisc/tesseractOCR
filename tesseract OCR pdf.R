#####------------
#OCR PDF
library(tesseract)
#tesseract_info()
#tesseract_download("ita")

ita <- tesseract("ita")
text <- tesseract::ocr("xxx.pdf", engine = ita)
cat(text)


results <- tesseract::ocr_data("xxx.pdf", engine = ita)
results

library(stringr)
newstring <- str_split(text, "\n", Inf)
str_split_fixed(text, "\n", Inf)

newstring[[1]][4+1]
newstring[[1]][11]
