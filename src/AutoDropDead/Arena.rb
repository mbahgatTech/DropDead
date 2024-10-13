class Arena < IArena
  def initialize
  end

  def initialize_game(player_count, sides, dice_count, players, drop_dead, dice_set_controller)
    dice_set_controller.configure_dice(dice_count, sides, drop_dead)
    players.initialize_players(player_count, drop_dead)
  end
end
