# Q08: factorの順序が思った通りにならない問題を直す
# 期待：carrierを便数の多い順に並べて棒グラフ

library(tidyverse)
library(nycflights13)

df <- flights |>
  count(carrier) |>
  # BUG: これだとアルファベット順になる
  mutate(carrier = as.factor(carrier))

# TODO:
# - ggplotで棒グラフ
# - fct_reorder を使ってnで並べ替え
ggplot(df, aes(carrier, n)) +
  geom_col()
