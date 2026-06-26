# Q02: filterの論理条件ミス（& と |、括弧）
# 期待：arr_delay が30分以上 または dep_delay が30分以上の便を抽出。NAは除外。

library(dplyr)
library(nycflights13)

df <- flights |>
  filter(arr_delay >= 30 & dep_delay >= 30)

# TODO: 正しくフィルタリングする（「または」の条件とNA除外に注意）

df |> count(is.na(arr_delay), is.na(dep_delay))
df |>
  select(year, month, day, arr_delay, dep_delay) |>
  slice_head(n = 10)
