library(rvest)

carsurl <- "https://en.wikipedia.org/wiki/Comma-separated_values"
cars <- read_html(carsurl)

cartable <- html_nodes(cars, xpath ='//*[@id="mw-content-text"]/div[1]/table[2]')

commacar <- html_table(cartable)

commacar

write.csv(commacar, file = 'assignment2/cars.csv', row.names=FALSE)

df <- read.csv(file = 'assignment2/cars.csv')

