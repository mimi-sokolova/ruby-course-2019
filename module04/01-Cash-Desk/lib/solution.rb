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
    @sum = 0
    @bills = Hash.new(0)
  end

  def length
    return @bills.count
  end

  def total
    sum = 0
    @bills.each{|bill| sum += bill.amount}
    return sum
  end

end

class CashDesk
  def initialize()
    @cash = []
  end

  def take_money(money)
      @cash.push(money)
  end

  def total

    @cash.each do |bills|
      if bills.is_a?(Bill)
        total += bills.amount
        else total += bills.each{|bill| total += bill.amount}
      end
    end
    return total
  end

  def inspect
    @cash

  end
end




