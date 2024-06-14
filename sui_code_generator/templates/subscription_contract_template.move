module SubscriptionModule {
    struct Subscription has copy, drop, store {
        id: u64,
        subscriber: address,
        expiry: u64,
    }

    public fun create_subscription(id: u64, subscriber: address, expiry: u64): Subscription {
        Subscription { id, subscriber, expiry }
    }

    public fun renew_subscription(subscription: &mut Subscription, additional_time: u64) {
        subscription.expiry = subscription.expiry + additional_time;
    }

    public fun is_subscription_active(subscription: &Subscription, current_time: u64): bool {
        subscription.expiry > current_time
    }
}
