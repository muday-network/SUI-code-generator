module MarketplaceModule {
    struct Item has copy, drop, store {
        id: u64,
        price: u64,
        owner: address,
    }

    public fun list_item(id: u64, price: u64, owner: address): Item {
        Item { id, price, owner }
    }

    public fun buy_item(item: &mut Item, new_owner: address): bool {
        if (item.price > 0) {
            item.owner = new_owner;
            return true;
        }
        return false;
    }

    public fun get_item_price(item: &Item): u64 {
        item.price
    }
}
