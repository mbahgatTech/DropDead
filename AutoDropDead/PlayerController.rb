class PlayerController
    def initialize()
        @player_id = nil
        @drop_dead = nil
    end

    def create_player(drop_dead)
        @drop_dead = drop_dead
        @player_id = drop_dead.invite_player()
        return self
    end

    def perform_turn(on_drop_dead, on_roll)
        player_status = self.get_status()
        return player_status if player_status == :DEAD

        roll_results = @drop_dead.perform_turn(@player_id)
        on_roll.call(roll_results, @player_id)

        player_status = self.get_status()

        if player_status == :DEAD
            on_drop_dead.call(@player_id)
        end
        
        return player_status
    end

    def get_status()
        return @drop_dead.get_player_status(@player_id)
    end
end