class BankAccount

  def initialize(name, balance, currency)
    if balance < 0
      raise ArgumentError.new("Account balance can't be negative")
    end
    if currency.nil?
      raise ArgumentError.new("You can not have a acount without currency")
    end
    @name = name
    @balance = balance
    @currency = currency

  end

  def deposit(amount)
    if amount < 0
      raise ArgumentError.new("You can not deposit a negative number")
    end
    @balance +=amount
  end

  def balance
    @balance
  end

  def withdraw(amount)
    if amount > @balance
      return false
    else
      @balance -=amount
      return true
    end

  end

  def to_s()
    "Bank account for #{@name} with balance of #{@balance}#{@currency}"
  end

end