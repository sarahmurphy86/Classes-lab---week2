require("minitest/autorun")
require('minitest/rg')

require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Warriors",["Anna","Sophie","Sarah"],"Kate")
    assert_equal("Warriors", team.team_name())
  end

  def test_players
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
    assert_equal(["Anna", "Sophie", "Sarah"], team.players())
  end

  # def test_get_coach
  #   team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
  #   assert_equal("Kate", team.get_coach())
  # end

  # def test_set_coach
  #   team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
  #   team.set_coach("Tina")
  #   assert_equal("Tina", team.get_coach())
  # end

  def test_coach
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
    team.coach = ("Tina")
    assert_equal("Tina", team.coach())
  end

  def test_add_new_players
  #   team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
  #   assert_equal(["Anna", "Sophie", "Sarah"], team.players())
  end

end
