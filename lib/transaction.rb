class Transaction
    attr_reader :balance, :credit, :debit
    def initialize(balance: nil, credit: nil, debit: nil)
        @balance = balance
        @credit = credit
        @debit = debit
    end
end