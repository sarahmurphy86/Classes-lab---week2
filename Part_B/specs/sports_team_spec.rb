require("minitest/autorun")
require('minitest/rg')

require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Warriors",["Anna","Sophie","Sarah"],"Kate", 0)
    assert_equal("Warriors", team.team_name())
  end

  def test_players
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate", 0)
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
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate", 0)
    team.coach = ("Tina")
    assert_equal("Tina", team.coach())
  end

  def test_add_new_player
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate", 0)
    team.add_new_player_name("John")
    assert_equal(["Anna", "Sophie", "Sarah", "John"], team.players())
  end

# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
#
  def test_find_player_by_name
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate", 0)
    team.find_player_by_name("Anna")
    assert_equal("Anna",team.find_player_by_name("Anna"))
  end
#

  def test_add_points
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate", 0)
  end
# # create a method that takes in whether the team has won or lost and updates the points property for a win.
#
  def test_team_outcome__win
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate", 0)
    team.team_outcome("WIN")
    assert_equal(3, team.team_outcome("WIN"))
  end


  def team_outcome__loose
    team = SportsTeam.new("Warriors", ["Anna", "Sophie", "Sarah"], "Kate")
    team.team_outcome("LOOSE")
    assert_equal(-3, team.team_outcome("LOOSE"))
  end


end
