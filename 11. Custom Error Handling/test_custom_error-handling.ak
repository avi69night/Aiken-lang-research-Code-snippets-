test ErrorHandlingTest {
    assert_eq!(ErrorHandlingContract::divide(10, 2), Ok(5))
    assert_eq!(ErrorHandlingContract::divide(10, 0), Err("Division by zero"))
}
