sql <- function(query, tolower=TRUE, dots=TRUE, encoding="unknown",
                useBytes=TRUE, stringsAsFactors=FALSE, warn=-1, debug=FALSE,
                ...)
{
  ## 1  Handle warnings and options
  on.exit(suppressWarnings(dbUnloadDriver(dbDriver("Oracle"))))
  osaf <- options(stringsAsFactors=stringsAsFactors)
  on.exit(options(osaf), add=TRUE)
  owarn <- options(warn=warn)
  on.exit(options(owarn), add=TRUE)

  ## 2  Prepare query
  # read file into one string
  if(file.exists(query))
    query <- paste(readLines(query,encoding=encoding), collapse=" ")
  # single spaces
  query <- gsub("[ \f\n\r\t\v\240]+", " ", query, useBytes=useBytes)
  # ROracle chokes on semicolons
  query <- gsub(";", "", query, useBytes=useBytes)
  if(debug)
    return(query)

  ## 3  Run query
  output <- dbGetQuery(dbConnect(dbDriver("Oracle"), ...), query)
  if(!inherits(output, "data.frame"))
    return(output)

  ## 4  Format output
  rownames(output) <- NULL
  if(tolower)
    names(output) <- tolower(names(output))
  if(dots)
    names(output) <- chartr("_", ".", names(output))

  output
}
