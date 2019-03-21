require 'calculator'

describe 'Calculator' do
  before(:context) do
    @calculator = Calculator.new
  end

  it '.add sum x and y' do
  expect(@calculator.add(2, 3)).to eq(5)
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

  it '.divide x and y  ' do
    expect(@calculator.divide(8, 2)).to eq(4)
  end

  it '.divide x and y with float result' do
    expect(@calculator.divide(9.81, 9)).to eq(1.09)
  end

  it '.divide x with extra symbols and y   ' do
    expect(@calculator.divide('72 free donuts', 9)).to eq(8.0)
  end

end