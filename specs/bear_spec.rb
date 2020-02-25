require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("John Dory")
    @fish3 = Fish.new("Mike the Pike")
    @fish4 = Fish.new("Grace the Plaice")
    @fish5 = Fish.new("Skout the Trout")
    @fish_pop = [@fish1, @fish2, @fish3, @fish4, @fish5]
    @river = River.new("Nile", @fish_pop)
  end

  def test_get_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_take_a_fish
    @bear.take_a_fish(@river,@fish4)
    @bear.take_a_fish(@river,@fish2)
    assert_equal(2, @bear.food_count)
    assert_equal(3, @river.get_fish_count)
  end

  def test_roar
    assert_equal("Rooooooaaaaaarrrrr!!!", @bear.roar)
  end

  def test_food_count
    @bear.take_a_fish(@river,@fish4)
    @bear.take_a_fish(@river,@fish2)
    assert_equal(2, @bear.food_count)
  end

end
