
library(rvest)
library(dplyr)

# Testing if we are allowed to web scrape
robotstxt::paths_allowed(domain = 
"https://kworb.net/spotify/artist/3WrFJ7ztbogyGnTHbHJFl2_songs.html")
## Returned true so we are allowed to scrape

# URL
url <- "https://kworb.net/spotify/artist/3WrFJ7ztbogyGnTHbHJFl2_songs.html"

# Read page
page <- read_html(url)

# Extract all tables (the first one is usually the songs table)
tables <- page %>% html_table(fill = TRUE)

# Inspect how many tables
length(tables)

# Select the correct table
df <- tables[[2]]

# Copy df to clipboard
write.table(df, "clipboard", sep = "\t", row.names = FALSE)
