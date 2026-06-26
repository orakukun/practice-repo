# Q09: ggplotのグラフを読みやすく直す
# 期待：距離(distance)と到着遅延(arr_delay)の関係を散布図で
# - 軸ラベルを分かりやすく（単位も）
# - 点が重なりすぎる場合の工夫（alpha等）

library(tidyverse)
library(nycflights13)

df <- flights |> 
  slice_head(n = 10000)

df |> 
  ggplot(aes(distance, arr_delay)) +
  geom_point()

# TODO:
# - filter(!is.na(arr_delay))をはさむとNAの警告が出なくなる
# - labs()で日本語のタイトルや軸ラベルをつける
# - 点の見やすさ調整