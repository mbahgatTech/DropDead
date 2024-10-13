class ICoordinator
  def initialize
  end

  def add_player(score_keeper, point_counter, dice_factory)
    raise 'Interface Method - Not Implemented'
  end

  def get_player_status(player_id)
    raise 'Interface Method - Not Implemented'
  end

  def perform_turn(player_id)
    raise 'Interface Method - Not Implemented'
  end
end
