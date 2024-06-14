module LendingModule {
    struct Loan has copy, drop, store {
        borrower: address,
        amount: u64,
        interest_rate: u64,
    }

    public fun create_loan(borrower: address, amount: u64, interest_rate: u64): Loan {
        Loan { borrower, amount, interest_rate }
    }

    public fun get_loan_details(loan: &Loan): (address, u64, u64) {
        (loan.borrower, loan.amount, loan.interest_rate)
    }
}
