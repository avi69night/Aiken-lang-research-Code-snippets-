test MapTest {
    let my_map = Map::new()
    let my_map = my_map.put("key1", 100)
    assert_eq!(MapContract::get_value(my_map, "key1"), Some(100))
}

