import  dayjs from "dayjs"
const now = dayjs()
console.log(`${now.add(1, "day").format("MM/DD")}から本気出す`)
