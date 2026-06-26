# Q11: mutate で新しい列を作る
# 期待：時速 distance / air_time * 60 を計算して speed_mph 列を追加する

library(dplyr)
library(nycflights13)

# BUG: air_time が分単位なので、このままだと「1分あたりの距離」になる
out <- flights |>
  mutate(speed_mph = distance / air_time) |>
  select(carrier, flight, distance, air_time, speed_mph)

# TODO:
# - speed_mph が「1時間あたりのマイル」になるように直す
# - air_time が NA の行は除いてから計算してもよい
# - (任意) speed_mph が大きい順に並べる

out |>
  slice_head(n = 10)
