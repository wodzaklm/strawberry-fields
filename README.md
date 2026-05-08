# strawberry-fields
ISA 401 Final Project: Analysis of Beatles music and solo careers

Description: Analyzing the success of the Beatles, both as a band, and later as solo artists. Our data includes daily streaming data, geographic streaming data, Billboard charts, and a calculated "hit percentage" measure (scaling the number of hits by an artist to the total number of songs they have released).

### Data Sources
- Kworb (Streaming data by country, as well as cumulative and daily Spotify streaming data)
- ChartMasters (Audio and video streams for singles)
- Billboard Charts (1964-1984 Top 100 #1 Billboard charts from Wikipedia)

### Workflow
For Billboard data, we used Claude to scrape the Wikipedia pages. Due to the formatting of the embedded tables, we were unable to web scrape them ourselves. Cross-validating with a manually produced table of Billboard charts, we corrected technically incorrect date values. For this reason, there is not an associated data preparation/cleaning file in this Github for Billboard data. 

For the Kworb Spotify streaming data we used webscraping techniques in R code to extract streaming data from the Kworb website. We extracted the second table on the webpage. We used the rvest and dplyr packages. This data was copied to our clipboard which we manually put into a csv file for each artist. 

For the Kworb Geographic data,  We extracted data for the album popularity within the top 200 by country. The data contains: artist, album, placement(within the top 200), and country where it placed. To get this data we used R and scraped each webpage with two chunks of code.

