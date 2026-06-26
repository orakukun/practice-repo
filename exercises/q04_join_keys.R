# Q04: joinのキーがずれて変な行数になるのを直す
# 期待：flights に airports の空港情報を付与（left_join）

library(dplyr)
library(nycflights13)

# BUG: byの指定ミス
out <- flights |>
  left_join(airports, by = "dest")

# TODO:
# - joinキーを正しく
# - 結果の列数が増えていることを確認
# - joinの前後で行数が増えていないことを確認
