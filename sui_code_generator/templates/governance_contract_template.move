module GovernanceModule {
    struct Proposal has copy, drop, store {
        id: u64,
        description: vector<u8>,
        votes_for: u64,
        votes_against: u64,
    }

    public fun create_proposal(id: u64, description: vector<u8>): Proposal {
        Proposal { id, description, votes_for: 0, votes_against: 0 }
    }

    public fun vote_for(proposal: &mut Proposal) {
        proposal.votes_for = proposal.votes_for + 1;
    }

    public fun vote_against(proposal: &mut Proposal) {
        proposal.votes_against = proposal.votes_against + 1;
    }

    public fun get_votes(proposal: &Proposal): (u64, u64) {
        (proposal.votes_for, proposal.votes_against)
    }
}
