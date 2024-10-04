test MatchTest {
    assert_eq!(PatternContract::match_number(1), "One")
    assert_eq!(PatternContract::match_number(5), "Other")
}
