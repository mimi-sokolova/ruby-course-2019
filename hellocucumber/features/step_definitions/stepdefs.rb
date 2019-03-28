require 'rspec/expectations'

Given ("today is {string}") do |given_day|
  @today = given_day
end


When ("I ask whether it's Friday yet") do
@result = is_it_friday(@today)
end

Then ("I should be told {string}") do |expected|
  expect(@result).to eq(expected)
end


def is_it_friday(day)
  if day=="Friday"
    return "TGIF"
  else
    return "Nope"
  end
end
