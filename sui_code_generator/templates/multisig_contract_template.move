module MultisigModule {
    struct Multisig has copy, drop, store {
        id: u64,
        owners: vector<address>,
        required_signatures: u64,
        signatures: u64,
    }

    public fun create_multisig(id: u64, owners: vector<address>, required_signatures: u64): Multisig {
        Multisig { id, owners, required_signatures, signatures: 0 }
    }

    public fun sign_transaction(multisig: &mut Multisig, signer: address): bool {
        if (vector::contains(&multisig.owners, &signer)) {
            multisig.signatures = multisig.signatures + 1;
            return true;
        }
        return false;
    }

    public fun is_transaction_approved(multisig: &Multisig): bool {
        multisig.signatures >= multisig.required_signatures
    }
}
