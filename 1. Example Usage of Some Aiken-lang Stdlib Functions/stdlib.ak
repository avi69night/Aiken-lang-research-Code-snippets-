fn calculate_total(inputs: List<Input>) -> Int {
    // Use foldl to sum all input amounts
    foldl(fn (acc, input) { acc + input.amount }, 0, inputs)
}

fn validate_signature(tx: Transaction, pubkey: String) -> Bool {
    // Extract signature from transaction and validate
    match get_signatures(tx) {
        [signature] -> verify_signature(tx.data, signature, pubkey),
        _ -> false
    }
}

fn validate_transaction(tx: Transaction) -> Result<String, String> {
    if calculate_total(get_inputs(tx)) > 1000 {
        Ok("Valid transaction")
    } else {
        Err("Transaction amount too low")
    }
}

