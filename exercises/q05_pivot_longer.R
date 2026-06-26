# Q05: pivot_longer の cols 指定ミスを直す
# 期待：storeごとの商品別別個数データを縦長に変形

library(tidyverse)

df <- tribble(
  ~store , ~apple , ~banana ,
  "A"    ,     10 ,       5 ,
  "B"    ,      9 ,       3
)

out <- df |>
  pivot_longer(cols = store, names_to = "item", values_to = "units")

# TODO: cols指定を正しくし、store以外(apple, banana)を縦長形式で格納
out
