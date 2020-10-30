require_relative './transfer.rb'

class BankAccount

    attr_accessor :balance, :status, :transfer
    attr_reader :name

    def initialize(name, balance=1000)
        @name = name
        @balance = balance.to_i
        @status = "open"
    end
    
    def deposit(money)
        @balance += money
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        self.status == "open" && self.balance > 0 
    end

    def close_account
        @status = "closed"
    end
end
