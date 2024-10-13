class Scoreboard < IScoreboard
  def initialize
    @drop_dead = nil
  end

  def announce_player_scores(drop_dead)
    @drop_dead = drop_dead
    player_scores = get_player_scores

    player_scores.each { |key, value| puts "Player with id '#{key}' scored #{value} points." }
    @drop_dead = nil
  end

  def get_player_scores
    @drop_dead.get_player_scores
  end
end
