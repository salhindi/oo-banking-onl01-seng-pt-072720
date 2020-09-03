class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name, balance= 1000, status= "open")
    @name= name
    @balance= 1000
    @status= "open"
  end
  
  def deposit(money)
    if money > 1
      @balance += money
    end
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    @status == "open" && self.balance > 0
  end
  
  def close_account
    @status = "closed"
  end
end
