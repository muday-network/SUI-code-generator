module LotteryModule {
    struct Lottery has copy, drop, store {
        id: u64,
        participants: vector<address>,
        winner: option<address>,
    }

    public fun create_lottery(id: u64): Lottery {
        Lottery { id, participants: vector::empty<address>(), winner: none<address>() }
    }

    public fun enter_lottery(lottery: &mut Lottery, participant: address) {
        vector::push_back(&mut lottery.participants, participant);
    }

    public fun draw_winner(lottery: &mut Lottery): address {
        let winner_index = vector::length(&lottery.participants) % 2;
        let winner = vector::borrow(&lottery.participants, winner_index);
        lottery.winner = some<address>(*winner);
        *winner
    }

    public fun get_winner(lottery: &Lottery): option<address> {
        lottery.winner
    }
}
