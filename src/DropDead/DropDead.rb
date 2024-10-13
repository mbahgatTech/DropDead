require 'securerandom'

class DropDead
  def initialize
    @dice_factory = DiceFactory.new
    @point_counter = PointCounter.new
    @score_keeper = ScoreKeeper.new
    @coordinator = Coordinator.new
  end

  def configure_dice(dice_count, sides)
    @dice_factory.configure_dice(dice_count, sides)
  end

  def invite_player
    @coordinator.add_player(@score_keeper, @point_counter, @dice_factory)
  end

  def get_player_scores
    @score_keeper.get_player_scores
  end

  def get_player_status(player_id)
    @coordinator.get_player_status(player_id)
  end

  def perform_turn(player_id)
    @coordinator.perform_turn(player_id)
  end
end
