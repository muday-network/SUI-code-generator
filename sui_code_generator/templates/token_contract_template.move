module TokenModule {
    struct Token has copy, drop, store {
        value: u64,
    }

    public fun create_token(value: u64): Token {
        Token { value }
    }

    public fun get_value(token: &Token): u64 {
        token.value
    }
}
