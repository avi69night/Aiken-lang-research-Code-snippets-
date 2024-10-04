contract ErrorHandlingContract {
    entrypoint divide(x: Int, y: Int) -> Result<Int, String> {
        if y == 0 {
            Err("Division by zero")
        } else {
            Ok(x / y)
        }
    }
}
