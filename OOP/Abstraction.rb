class BankAccount
    INTEREST_RATE = 0.8
    def initialize(balance)
        @balance = balance
    end

    def display_bal
        puts "Current balance is #{@balance}"
    end
    def interest
        interest = (@balance * INTEREST_RATE) / 100
        @balance += interest
        puts "New balance is #{@balance}"
    end
end

savings_acct = BankAccount.new(1000)
savings_acct.display_bal
savings_acct.interest

