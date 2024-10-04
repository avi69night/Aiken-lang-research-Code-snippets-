contract MapContract {
    entrypoint get_value(map: Map<String, Int>, key: String) -> Option<Int> {
        map.get(key)
    }
}
