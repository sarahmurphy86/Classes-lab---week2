class SportsTeam

  attr_reader(:team_name, :players)
  attr_accessor(:coach)

    def initialize (input_team_name, input_players, input_coach, points_total)
      @team_name = input_team_name
      @players = input_players
      @coach = input_coach
      @points = points_total

    end

    def add_new_player_name(extra_name)
      @players.push(extra_name)
    end

    def find_player_by_name(name_to_find)
      player = []
      for player in @players
        return player if player == (name_to_find)
      end
    end
    #
    def team_outcome(win_or_loose)
      @points = 0
        if win_or_loose == "WIN"
          @points +=3
        else
          @points -=3
        end
    end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end

  # def get_coach()
  #   return @coach
  # end
  #
  # def set_coach(new_name)
  #     @coach = new_name
  # end


end
