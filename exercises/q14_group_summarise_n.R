# Q14: group_by した集計の単位を直す
# 期待：月ごとの平均到着遅延分数と便数を出す

library(dplyr)
library(nycflights13)

# BUG: group_by() がないので、全体の平均が1行だけ出る
out <- flights |>
  summarize(
    mean_arr_delay = mean(arr_delay),
    flights = n()
  )

# TODO:
# - month ごとに集計する
# - mean() では NA を除く
# - month の昇順に並べる

out
