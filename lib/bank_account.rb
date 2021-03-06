class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.balance = 1000
    self.status = 'open'
    @@all << self
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if self.status == 'open' && self.balance > 0
      true
    else
      false
    end
  end

  def close_account
    self.status = 'closed'
  end

end
