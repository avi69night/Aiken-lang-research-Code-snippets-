contract OptionContract {
    entrypoint get_value(opt: Option<Int>) -> Int {
        match opt {
            Some(v) => v,
            None => 0
        }
    }
}
