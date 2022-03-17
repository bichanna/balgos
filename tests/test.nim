#[
  tests/test.nim

  Written by Nobuharu Shimazu
  Date: 2022/3/16
]#

import unittest

import balgos/mult
test "can third-grade mult":
  check third_grade_mult(12345, 6789) == 83810205
  check third_grade_mult(1234, 5678) == 7006652