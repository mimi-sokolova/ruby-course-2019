class Panda


  def initialize(name, age, weight)
    @name = name
    @age = age
    @weight = weight
  end

  def name
    @name
  end

  def age
    @age
  end

  def weight
    @weight
  end

  def _get_buff()
    if @weight < 1000
      @weight += 1
    end
  end

  def eat_bamboo()
    _get_buff()
    return "Noom Noom Nomm"

  end

end

dimcho = Panda.new("Dimcho", 10, 150)
puts dimcho.age
puts dimcho.weight
puts dimcho.eat_bamboo
puts dimcho.weight

babaDora = Panda.new("babaDora", 178,78)
puts babaDora.age
puts babaDora.weight
puts babaDora.eat_bamboo
puts babaDora.weight

puts babaDora.is_a?(Panda)

puts babaDora.class