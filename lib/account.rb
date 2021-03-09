class Account
        attr_reader :balance
        
        def initialize
            @balance = 0
        end

        def deposit(amount)
            @balance += amount
        end

        def withdraw(amount)
            @balance -= amount
       raise "Insufficient funds, please select a different amount" if @balance < amount 
            end
        end