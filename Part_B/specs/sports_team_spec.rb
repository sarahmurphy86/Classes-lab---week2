require("minitest/autorun")
require('minitest/rg')

require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    team = SportsTeam.new("Warriors",["Anna","Sophie","Sarah"],"Kate")
    assert_equal("Warriors", team.get_team_name())
  end

  def test_get_players
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
    assert_equal(["Anna", "Sophie", "Sarah"], team.get_players())
  end

  def test_get_coach
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
    assert_equal("Kate", team.get_coach())
  end

  def test_set_coach
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
    team.set_coach("Tina")
    assert_equal("Tina", team.get_coach())
  end


end
