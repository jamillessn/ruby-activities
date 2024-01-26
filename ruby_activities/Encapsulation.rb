class BankAccount
    def initialize(account_name,balance)
        @account_name = account_name
        @balance = balance
    end

    def get_balance
        puts "#{@balance}"
    end

    def deposit(amount)
        if amount > 0
            @balance += amount
            puts "Deposited #{@amount}. New balance is #{@balance}"
        else
            puts "Invalid amount."
        end
    end

    def withdraw(amount)
        if amount > 0 && @balance >= amount
            @balance -= amount
            puts "#{@amount}has been withdrawn. Total balance is #{@balance}."
        else
            puts "Invalid amount."
        end
    end
end

account = BankAccount.new("Jane", 1000)
account.get_balance
account.withdraw(-20)
account.deposit(100)