require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_scissors
    assert_equal(1,Game.rockPaperScissor("scissors"))
  end


end
