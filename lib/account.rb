require_relative './statement.rb'

class Account

attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.push(["+",transaction_date,amount,@balance])
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_history.push(["-",transaction_date,amount,@balance])
  end

  def print_statement
    Statement.new(@transaction_history).print
  end
end

private

def transaction_date
  Time.now.strftime("%d/%m/%Y")
end
