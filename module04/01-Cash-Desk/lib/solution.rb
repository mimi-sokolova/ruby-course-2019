class Bill

  def initialize(amount)
    if amount < 0
      raise ArgumentError.new("Amount of a Bill can not be negative")
    end
    unless amount.is_a?(Integer)
      raise ArgumentError.new("Amount must be integer")
    end
    @amount = amount
  end

  def to_s()
    "A #{@amount}$ bill"
  end

  def amount
    @amount
  end

  def ==(b)
    @amount == b.amount
  end

end

class BatchBill

  def initialize(bills)
    @bills = bills
  end

  def length
    return @bills.count
  end

  def total
    sum = 0
    @bills.each {|a| sum += a.amount}

    return sum
  end

  def each(&block)
    @bills.each(&block)
  end


  def include?(b)
    @bills.include?(b)
  end

end

class CashDesk
  def initialize()
    @cash = Hash.new(0)
  end

  def take_money(money)
    if money.is_a?(BatchBill)
      money.each {|m| @cash[m.amount] += 1}
    else
      @cash[money.amount] += 1
    end
  end

  def total
    total = 0
    @cash.each do |bills|
      if bills.is_a?(Bill)
        total += bills.amount
        else total += bills.each{|bill| total += bill.amount}
      end
    end
    return total
  end

  def inspect

  end

end




