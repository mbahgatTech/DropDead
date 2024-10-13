require_relative "./load_drop_dead.rb"

class AutoDropDead
    def initialize()
        @drop_dead = DropDead.new
        @players = Players.new
        @arena = Arena.new
        @scoreboard = Scoreboard.new
        @dice_set_controller = DiceSetController.new
    end

    def play_game(sides, dice_count, player_count)
        @arena.initialize_game(player_count, sides, dice_count, @players, @drop_dead, @dice_set_controller)
        @players.perform_turns()
        @scoreboard.announce_player_scores(@drop_dead)
    end
end

AutoDropDead.new.play_game(4,4,5)
