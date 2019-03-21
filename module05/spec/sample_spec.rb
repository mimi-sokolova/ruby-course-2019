describe 'Sample' do

  it 'Integer' do
    expect([1, 2, 3].sample).to be_an(Integer)
  end

  it 'Contain in the array' do
    expect([1, 2, 3].sample).to include
  end

  it 'Returns exact number of requested element' do
    expect([1, 2, 1, 2, 1, 2, 2, 9, 9].sample(2).count).to eq(2)
  end

  it 'Duplicated value - should return a unieq set of values' do
  end

  it 'empty ' do
  end

  it 'Strings' do
  end

  it 'Array in the array' do
  end

  it 'NoMethodError' do
    expect{"barbarara".sample}.to raise_error(NoMethodError)
  end

end