require 'calculator'

describe 'Calculator' do
  before(:context) do
    @calculator = Calculator.new
  end

  it '.add sum x and y' do
  expect(@calculator.add(2, 3)).to eq(5)
  end

  it '.add sum x and y of negative' do
    expect(@calculator.add(-2, -3)).to eq(-5)
  end

  it '.add sum of strings x and y ' do
    expect(@calculator.add('harry', 'sally')).to eq('harrysally')
  end

  it '.add sum of arrays x and y ' do
    expect(@calculator.add([9, 5, 7], [1, 2])).to eq([9, 5, 7, 1, 2])
  end

  it '.subtract x and y with positive result' do
    expect(@calculator.subtract(6, 2)).to eq(4)
  end

  it '.subtract x and y with negativ result' do
    expect(@calculator.subtract(2, 8)).to eq(-6)
  end

  it '.multiply x and y ' do
    expect(@calculator.multiply(2, 8)).to eq(16)
  end

  it '.multiply floats x and y ' do
    expect(@calculator.multiply(6.22, 3)).to eq(18.66)
  end

  it '.multiply array x and y ' do
    expect(@calculator.multiply([2, 4, 8, 10], 2)).to eq([2, 4, 8, 10, 2, 4, 8, 10])
  end

  it '.divide x and y  ' do
    expect(@calculator.divide(8, 2)).to eq(4)
  end

  it '.divide x and y with float result' do
    expect(@calculator.divide(9.81, 9)).to eq(1.09)
  end

  it '.divide x and y with float result' do
    expect(@calculator.divide(9.87, 3)).to eq(3.2899999999999996)
  end

  it '.divide x with extra symbols and y   ' do
    expect(@calculator.divide('72 free donuts', 9)).to eq(8.0)
  end

end