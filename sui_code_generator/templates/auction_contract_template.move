module AuctionModule {
    struct Auction has copy, drop, store {
        id: u64,
        highest_bid: u64,
        highest_bidder: address,
    }

    public fun create_auction(id: u64): Auction {
        Auction { id, highest_bid: 0, highest_bidder: @0 }
    }

    public fun place_bid(auction: &mut Auction, bid: u64, bidder: address): bool {
        if (bid > auction.highest_bid) {
            auction.highest_bid = bid;
            auction.highest_bidder = bidder;
            return true;
        }
        return false;
    }

    public fun get_highest_bid(auction: &Auction): (u64, address) {
        (auction.highest_bid, auction.highest_bidder)
    }
}
