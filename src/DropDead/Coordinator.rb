class Coordinator < ICoordinator
  def initialize
    @players = {}
  end

  def add_player(score_keeper, point_counter, dice_factory)
    status = @players.length == 0 ? :ACTIVE : :WAITING

    player = PlayerModel.new.create_player(status, point_counter, score_keeper, dice_factory)
    player_id = player.id

    @players[player_id] = player
    player_id
  end

  def get_player_status(player_id)
    player = @players[player_id]
    return :DEAD if player.nil?

    player.get_status
  end

  def perform_turn(player_id)
    player = @players[player_id]
    player_status = get_player_status(player_id)

    return nil if player.nil? || player_status == :DEAD || player_status == :WAITING

    results = player.perform_turn
    set_next_player_status(player_id)

    results
  end

  private

  def set_next_player_status(player_id)
    player_ids = @players.keys
    current_index = player_ids.index(player_id)
    next_index = current_index

    until (next_index = (next_index + 1) % @players.length) == current_index
      next_player_id = player_ids[next_index]
      return @players[next_player_id].set_status(:ACTIVE) if get_player_status(next_player_id) != :DEAD
    end

    # set current player to active if last waiting player
    current_status = @players[player_id].get_status
    @players[player_id].set_status(:ACTIVE) if current_status != :DEAD
  end
end
