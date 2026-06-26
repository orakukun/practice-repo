# Q12: count と distinct の使い方を直す
# 期待：目的地(dest)ごとの便数を数え、便数が多い順に並べる

library(dplyr)
library(nycflights13)

# BUG: distinct() を使うと重複が消えるので、便数が数えられない
out <- flights |>
  distinct(dest) |>
  count(dest) |>
  arrange(desc(n))

# TODO:
# - dest ごとの便数を正しく数える
# - 便数が多い順に並べる
# - 上位10件を確認する

out |>
  slice_head(n = 10)
