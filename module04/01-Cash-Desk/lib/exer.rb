require './solution.rb'

a = Bill.new(10)
b = Bill.new(5)
c = Bill.new(10)

a.amount
a.to_s
puts

a == b
a == c

money_holder = {}

money_holder[a] = 1

if money_holder.key?(c)
  money_holder[c] += 1
end

puts money_holder

values = [10, 20, 50, 100]

bills = []
for value in values
  bills.push(Bill.new(value))
end

batch = BatchBill.new(bills)

for bill in batch
  puts bill
end