require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("John Dory")
    @fish3 = Fish.new("Mike the Pike")
    @fish4 = Fish.new("Grace the Plaice")
    @fish5 = Fish.new("Skout the Trout")
    @fish_pop = [@fish1, @fish2, @fish3, @fish4, @fish5]
    @river = River.new("Amazon", @fish_pop)
  end

  def test_get_name()
    assert_equal("Amazon", @river.name)
  end

  def test_get_fish_count()
    assert_equal(5, @river.get_fish_count)
  end

  def test_lose_a_fish
    @river.lose_a_fish(@fish3)
    assert_equal(4, @river.get_fish_count)
  end

end
