class ScoreKeeper < IScoreKeeper
  def initialize
    @scores = {}
  end

  def get_player_scores
    @scores.dup
  end

  def update_points(player_id, points)
    current_score = @scores[player_id] || 0
    current_score += points

    @scores[player_id] = current_score
  end
end
