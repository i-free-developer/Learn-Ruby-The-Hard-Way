# Account
class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name,balance=100)
    @name = name
    @balance = balance
  end
  public
  def display_balance(pin_number)
      puts pin_number == pin? "Balance: $#{@balance}" : pin_error
  end
  def withdraw(pin_number,amount)
    if pin_number == pin && @balance > amount
      @balance -= amount
      puts "Withdraw #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  def deposit(pin_number,amount)
    if pin_number == pin
      @balance += amount
      puts "Deposit #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  private
  def pin_error
    return "Access denied: incorrect PIN."
  end
  def pin
    @pin = 1234
  end
end
checking_account = Account.new("xiaohu",1000000)
checking_account.withdraw(1234,39000)
class CheckingAccount < Account
end
class SavingAccount < Account
end
