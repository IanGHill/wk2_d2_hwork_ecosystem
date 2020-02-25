class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_a_fish(river, fish)
    @stomach << fish
    river.lose_a_fish(fish)
  end

  def roar
    return "Rooooooaaaaaarrrrr!!!"
  end

  def food_count
    return @stomach.count
  end

end
