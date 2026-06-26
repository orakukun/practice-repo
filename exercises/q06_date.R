# Q06: 日付の扱い（データを日付に変換）
# 期待：flights の year/month/day から Date を作る

library(tidyverse)
library(nycflights13)

set.seed(123)
df <- flights |>
  select(year, month, day) |>
  slice_sample(n = 20)

# BUG: 20131020のように8桁ならよいが、6桁や7桁だとうまくいかない
df2 <- df |>
  mutate(
    dep_date = ymd(str_c(year, month, day))
  )

# TODO:
# - month と day が1桁の場合と2桁の場合が混在することに注意
# - 日付が必ずしも正しく作成されないのを確認し、修正する。例えばmake_date()を使うとよいかもしれない
df2
