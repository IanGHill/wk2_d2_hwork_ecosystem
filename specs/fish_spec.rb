require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Nemo")
  end

  def test_get_name()
    assert_equal("Nemo", @fish.name)
  end

end
