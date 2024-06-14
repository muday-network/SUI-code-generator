module VotingModule {
    struct Proposal has copy, drop, store {
        id: u64,
        description: vector<u8>,
        votes: u64,
    }

    public fun create_proposal(id: u64, description: vector<u8>): Proposal {
        Proposal { id, description, votes: 0 }
    }

    public fun vote(proposal: &mut Proposal) {
        proposal.votes = proposal.votes + 1;
    }

    public fun get_votes(proposal: &Proposal): u64 {
        proposal.votes
    }
}
