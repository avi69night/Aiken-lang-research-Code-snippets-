
contract PatternContract {
    entrypoint match_number(x: Int) -> String {
        match x {
            1 => "One",
            2 => "Two",
            _ => "Other"
        }
    }
}
