import gleam/list
import birl.{Day}
import gleam/string.{concat}
import gleeunit
import gleeunit/should
import honkidasu

pub fn main() {
  gleeunit.main()
}

pub fn honkidasu_test() {
  let msg = "から本気出す"
  let day_list = [Day(2024, 10, 1), Day(2024, 7, 29), Day(2024, 2, 19)]
  let expect = [
    concat(["10/01", msg]),
    concat(["07/29", msg]),
    concat(["02/19", msg]),
  ]

  list.map(day_list, honkidasu.honkidasu)
  |>should.equal(expect)
}

pub fn tomorrow_test() {
  // Unix Time at 11/11
  birl.from_unix(1_731_283_200)
  |> honkidasu.tomorrow()
  |> should.equal(Day(2024, 11, 12))
}
