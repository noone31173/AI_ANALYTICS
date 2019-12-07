library(nycflights13)
library(tidyverse)
nycflights13::flights
?flights
view(flights)
filter(flights, month == 1, day == 1)
dec25 <- filter(flights, month == 12, day == 25)
dec25
filter(flights, month == 11 | month == 12)
arrange(flights, year, month, day)
arrange(flights, desc(dep_delay))
select(flights, year, month, day)
rename(flights, tail_num = tailnum)


flights_sml <- select(flights,
                      year:day,
                      ends_with("delay"),
                      distance,
                      air_time
)
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60
)
