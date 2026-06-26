# Q10: select と rename の列名ミスを直す
# 期待：便名、出発地、到着地、距離だけを残し、分かりやすい列名にする

library(dplyr)
library(nycflights13)

# BUG: flight_no という列は存在しない
out <- flights |>
  select(flight_no, origin, dest, distance) |>
  rename(
    flight_number = flight_no,
    from = origin,
    to = dest
  )

# TODO:
# - flights に実際にある列名を使う
# - rename() の変数名も正しく直す

out |>
  slice_head(n = 10)
