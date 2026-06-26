# Q13: filter と arrange の条件ミスを直す
# 期待：出発遅延が60分以上の便を取り出し、遅延が大きい順に並べる

library(dplyr)
library(nycflights13)

# BUG: dep_delay < 60 だと「60分未満」になってしまう
out <- flights |>
  filter(dep_delay <= 60) |>
  arrange(dep_delay) |>
  select(year, month, day, carrier, flight, dep_delay)

# TODO:
# - 60分以上の出発遅延だけを残す
# - dep_delay が大きい順に並べる
# - NA が混ざらないようにする

out
