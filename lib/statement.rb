class Statement
    attr_reader :display

    def initialize
      @display = 'date || credit || debit || balance'
    end

    def print_statement(transaction)
        puts @display
        puts transaction.join("\n")
      end

end