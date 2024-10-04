test OptionTest {
    assert_eq!(OptionContract::get_value(Some(10)), 10)
    assert_eq!(OptionContract::get_value(None), 0)
}