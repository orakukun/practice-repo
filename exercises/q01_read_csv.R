# Q01: CSV読み込みの“よくあるミス”を直す
# 期待：data/tiny_sales.csv を読み込み、units が numeric、date が Date になること

library(tidyverse)

# csvファイルを読み込む
df <- read_csv("tiny_sales.csv")

# TODO:
# 1) 正しいパスで読み込む
# 2) date を日付形式に、units, price を数値に
# 3) glimpse(df) を見て想定どおりか確認

glimpse(df)
