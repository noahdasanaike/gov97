library(tidyverse)

df <- data.frame(
  country = c("Country A", "Country B", "Country C", "Country D", "Country E",
              "Country F", "Country G", "Country H", "Country I", "Country J"),
  gdp = c(45000, 38000, 52000, 29000, 61000, 33000, 48000, 55000, 41000, 37000),
  democracy_score = c(8.2, 6.7, 9.1, 5.4, 8.9, 4.8, 7.5, 9.3, 7.8, 6.1),
  percent_educated = c(85, 72, 91, 68, 94, 61, 79, 88, 82, 70)
)

m0 <- lm(gdp ~ democracy_score, df)
summary(m0)

m1 <- lm(gdp ~ democracy_score + percent_educated, df)
summary(m1)
