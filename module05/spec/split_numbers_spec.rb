require 'split_numbers'

describe 'Split numbers' do

  it '' do
    expect(split_numbers([6, 7, 8, 23, 56, 43])).to eq([[6,8,56],[7,23,43]])
  end

  it 'Only event' do
    expect(split_numbers([6, 8, 56])).to eq([[6,8,56],[]])
  end

  it 'Only odd' do
    expect(split_numbers([7,23,43])).to eq([[],[7,23,43]])
  end

  it 'With Zero' do
    expect(split_numbers([0, 6, 7, 8, 23, 56, 43])).to eq([[0 ,6,8,56],[7,23,43]])
  end

  it 'Negative and positive' do
    expect(split_numbers([0, -6, 7, 8, -23, 56, -43])).to eq([[0 ,-6, 8, 56],[7, -23, -43]])
  end

  it 'only one value ' do
    expect(split_numbers([5, 5, 5])).to eq([[],[5, 5, 5]])
  end

end