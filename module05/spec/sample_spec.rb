describe 'array.sample' do

  it 'result is the same data type as in the array' do
    expect([567, 789, 890, 6789, 78, 6789, 789].sample).to be_instance_of Integer
    expect([[91, 45], [15, 73], [85, 25], [22, 93]].sample).to be_instance_of Array
    expect(%w[harry torry lumpen tuti fruty].sample).to be_instance_of String
  end

  it 'result is in the given array' do
     expect([1, 2, 3].include?([1, 2, 3].sample)).to be_truthy
     expect(["Gaga", "Bradly", "Horast"].include?(["Gaga", "Bradly", "Horast"].sample)).to be_truthy
  end

  it 'returns exact number of requested element' do
    expect([1, 2, 1, 2, 1, 2, 2, 9, 9].sample(2).count).to eq(2)
    expect([1, 25, 16, 24, 12, 82, 28, 69, 69, 45, 51].sample(11).count).to eq(11)
  end

  it 'is given empty array ' do
    expect([].sample).to be_nil
  end

  it 'is given zero for argument' do
    expect([6, 7, 8, 8, 7, 767].sample(0)).to eq([])
  end

  it 'is given  one element in array' do
    expect([67].sample).to eq(67)
  end

  it 'is given  an argument greater then the  elements in array' do
    expect([1, 25, 16, 24].sample(7)).to contain_exactly(1, 25, 16, 24)
  end

  it 'is given array with different elements' do
    expect([[91, 45], 56, 'Kiki', 'Koala', 89, [78, 78, 34, 567]].sample).to(be_instance_of(Array).or(be_instance_of(String).or(be_instance_of(Integer))))
  end

  it 'raise NoMethodError when its not given an array' do
    expect { 'barbarara'.sample }.to raise_error(NoMethodError)
    expect { 675.sample }.to raise_error(NoMethodError)
    expect { {:a => 78, :b => 43 }.sample }.to raise_error(NoMethodError)
  end

  it 'is given invalid argument' do
    expect{[67, 98, 67, 45, 34].sample("b")}.to raise_error(TypeError, "no implicit conversion of String into Integer")
    expect{[67, 98, 67, 45, 34].sample(-3)}.to raise_error(ArgumentError, "negative sample number")

  end
end
