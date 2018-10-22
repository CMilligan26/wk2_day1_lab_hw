class SportsTeam
  attr_reader :name, :players, :points
  attr_accessor :coach

def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  @points = 0
end

def add_player(new_player)
  @players << new_player
end

def player_exists(player)
  @players.include?(player)
end

def win(true_or_false)
  result = (true_or_false ? 1 : 0)
  @points += result
end

end
