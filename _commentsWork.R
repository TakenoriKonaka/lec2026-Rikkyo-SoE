
library(tidyverse)

# 4

## データ読み込み
df4 <- readr::read_csv("comments/4_コメントペーパー_10_19 Survey Student Analysis Report.csv")

df4 |> colnames()
df4[, c(9, 11, 13)]

## comment1

df4[, 9] |> 
  print(n = Inf)

df4$comment1 <- df4[, 9]

## comment2

df4[, 11] |> 
  print(n = Inf)

df4$comment2 <- df4[, 11]

## comment3

df4[, 13] |> 
  print(n = Inf)

df4$comment3 <- df4[, 13]


# df4 <- df4 |> 
#   mutate(comment1 = str_replace_all(comment1, "[\r\n]+", " "),
#          comment2 = str_replace_all(comment2, "[\r\n]+", " "),
#          comment3 = str_replace_all(comment3, "[\r\n]+", " "))

df4 <- df4 |> 
  mutate(across(
    c(comment1, comment2, comment3),
    ~ str_replace_all(as.character(.x), "[\r\n]+", " ")
  ))

df4 |> 
  select(comment1) |> 
  readr::write_csv("comments/4_1.csv")


