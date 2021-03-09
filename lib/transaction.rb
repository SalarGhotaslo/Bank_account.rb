class Transaction
    attr_reader :balance, :credit
    def initialize(balance: nil, credit: nil)
        @balance = balance
        @credit = credit
    end
end