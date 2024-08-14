fn main() {
    let today = chrono::Local::now().date_naive();
    let tomorrow = today.checked_add_days(chrono::Days::new(1)).unwrap();
    println!("{}から本気出す", tomorrow.format("%m/%d").to_string());
}
