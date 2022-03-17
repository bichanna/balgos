#[
  balgos/mult.nim

  Written by Nobuharu Shimazu
  Date: 2022/3/16
]#

import strutils

proc third_grade_mult*(x, y: int): int =
  ## Multiplies two integers by the third-grade multiplication algorithm
  ##      1234
  ##    x 5678
  ## ----------
  ##      9872
  ##     8638
  ##    7404
  ##   6170
  ## ----------
  ##   7006652
  
  var resultStr: string = "0"
  
  for i in countdown(len($y)-1, 0):
    var partial: string = $(x * parseInt($($y)[i]))
    for j in 0 ..< (len($y) - (i+1)): partial &= "0"
    resultStr = $(parseInt(resultStr) + parseInt(partial))

  return parseInt(resultStr)