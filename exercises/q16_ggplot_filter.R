# Q16: ggplot を見やすくする
# 期待：出発遅延(dep_delay)と到着遅延(arr_delay)の関係を散布図で見る

library(tidyverse)
library(nycflights13)

# BUG: NA を含んだままなので警告が出やすく、点も重なって見にくい
flights |>
  # 1月のデータに絞る
  filter(month == 1) |>
  ggplot(aes(dep_delay, arr_delay)) +
  geom_point()

# TODO:
# - dep_delay と arr_delay が NA でない行だけにする
# - geom_point(alpha = ...) で見やすくする
# - labs() でタイトルと軸ラベルをつける
