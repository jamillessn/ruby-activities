class BankAccount
    attr_reader :account_name, :balance, :amount
    def initialize(account_name,balance)
        @account_name = account_name
        @balance = balance
    end

    def get_balance
        puts "#{@balance}"
    end

    def deposit(amount)
        @amount = amount
        if amount > 0
            @balance += amount
            # puts "Deposited #{@amount}. New balance is #{@balance}"
            puts "Deposited #{@amount}. New balance is #{self.balance}"
        else
            puts "Invalid amount."
        end
    end

    def withdraw(amount)
        if amount > 0 && @balance >= amount
            @balance -= amount
            puts "#{@amount} has been withdrawn. Total balance is #{@balance}."
        else
            puts "Invalid amount."
        end
    end
end

account = BankAccount.new("Jane", 1000)
account.get_balance
account.withdraw(250)
account.deposit(100)