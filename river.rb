class River

  attr_reader :name

  def initialize(name, fish_population)
    @name = name
    @fish_population = fish_population
  end

  def get_fish_count
    return @fish_population.count
  end

  def lose_a_fish(fish)
    @fish_population.delete(fish)
  end
end
