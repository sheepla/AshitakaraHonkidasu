import birl.{type Day, type Time}
import birl/duration
import gleam/int.{to_string}
import gleam/io
import gleam/string

pub fn main() {
  birl.now()
  |> tomorrow()
  |> honkidasu()
  |> io.println
}

pub fn honkidasu(day: Day) -> String {
  let mm = case day.month < 10 {
    True -> string.concat(["0", to_string(day.month)])
    False -> to_string(day.month)
  }

  let dd = case day.date < 10 {
    True -> string.concat(["0", to_string(day.date)])
    False -> to_string(day.date)
  }

  string.concat([mm, "/", dd, "から本気出す"])
}

pub fn tomorrow(time: Time) -> Day {
  birl.add(time, duration.days(1))
  |> birl.get_day()
}
