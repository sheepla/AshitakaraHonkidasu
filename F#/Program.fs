open System

let tomorrow = DateTime.Today.AddDays(1)
printfn $"{tomorrow:``MM/dd``}から本気出す"
