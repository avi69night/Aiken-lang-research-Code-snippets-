contract TypeErrorContract {
    entrypoint main(x: Int) -> Bool {
        x + "string"  -- Invalid operation between Int and String
    }
}
