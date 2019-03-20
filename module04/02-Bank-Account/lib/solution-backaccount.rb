class BankAccount

  def initialize(name, balance, currency)

    if balance < 0
      raise ArgumentError.new("Account balance can't be negative")
    end
    if currency == ""
      raise ArgumentError.new("You can not have a account without currency")
    end
    @name = name
    @balance = balance
    @currency = currency
    @history = ["Account was created"]
  end

  def name
    @name
  end

  def currency
    @currency
  end

  def deposit(amount)

    if amount < 0
      raise ArgumentError.new("You can not deposit a negative number")
    end
    @history.append("Deposited #{amount}#{@currency}")
    @balance += amount
  end

  def balance
    @history.append("Balance check -> #{@balance}#{@currency}")
    @balance
  end

  def withdraw(amount)

    if amount > @balance
      @history.append("Withdraw for #{amount}#{@currency} failed.")
      return false
    else
      @balance -= amount
      @history.append("#{amount}#{@currency} was withdrawn")
      return true
    end

  end

  def to_s()
    "Bank account for #{@name} with balance of #{@balance}#{@currency}"
  end

  def history
    @history
  end

  def transfer_to(account, amount)
    if account.currency != @currency
      return false
    end
    if @balance < amount
      return false
    end

    self.withdraw(amount)
    account.deposit(amount)
    @history.append("Transfer to #{account.name} for #{amount}#{@currency}")
    account.history.append("Transfer from #{@name} for #{amount}#{@currency}")
    return true

  end

end

