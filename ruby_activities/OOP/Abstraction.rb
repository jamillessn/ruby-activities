class BankAccount
    def initialize(balance)
        @balance = balance
    end

    def interest(rate)
        interest = (@balance * rate) / 100
        @balance += interest
        puts "New balance is #{@balance}"
    end
end

savings_acct = BankAccount.new(1000)
savings_acct.interest(8)

