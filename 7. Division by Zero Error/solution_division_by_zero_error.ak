contract SafeDivisionContract {
    entrypoint divide(x: Int, y: Int) -> Int {
        if y == 0 {
            0  -- Return 0 for division by zero
        } else {
            x / y
        }
    }
}
