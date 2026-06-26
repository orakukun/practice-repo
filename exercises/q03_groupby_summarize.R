# Q03: group_by + summarize での集計ミス
# 期待：carrier別に「便数」と「到着遅延時間の平均値（NA除く）」を出す

library(dplyr)
library(nycflights13)

out <- flights |>
  group_by(carrier) |>
  summarize(
    mean_arr_delay = mean(arr_delay),
    n = n()
  ) |>
  arrange(desc(n))

out |> print(n = 10)

# TODO:
# - 平均値が正しく計算されるように
# - ついでに「遅延が30分以上の割合」も追加
