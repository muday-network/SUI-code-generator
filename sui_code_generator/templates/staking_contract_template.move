module StakingModule {
    struct Stake has copy, drop, store {
        staker: address,
        amount: u64,
    }

    public fun create_stake(staker: address, amount: u64): Stake {
        Stake { staker, amount }
    }

    public fun get_stake_amount(stake: &Stake): u64 {
        stake.amount
    }
}
