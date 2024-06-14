module EscrowModule {
    struct Escrow has copy, drop, store {
        buyer: address,
        seller: address,
        amount: u64,
        is_released: bool,
    }

    public fun create_escrow(buyer: address, seller: address, amount: u64): Escrow {
        Escrow { buyer, seller, amount, is_released: false }
    }

    public fun release_funds(escrow: &mut Escrow) {
        escrow.is_released = true;
    }

    public fun is_funds_released(escrow: &Escrow): bool {
        escrow.is_released
    }
}
