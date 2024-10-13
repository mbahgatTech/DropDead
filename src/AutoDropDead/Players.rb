class Players < IPlayers
    def initialize()
        @players_controllers = Array.new
        @alive_players = 0
    end

    def initialize_players(player_count, drop_dead)
        for i in (0..player_count)
            @players_controllers << PlayerController.new.create_player(drop_dead)
        end

        @alive_players = player_count
    end 

    def perform_turns()
        until @alive_players <= 0
            @players_controllers.each do |controller|
                controller.perform_turn(method(:on_drop_dead), method(:on_roll))
            end
        end 
    end

    def on_drop_dead(player_id)
        puts "Player with id #{player_id} dropped dead"
        @alive_players -= 1
    end

    def on_roll(roll_results, player_id)
        return nil if roll_results == nil

        puts "Player with id #{player_id} rolled"
        puts "Total points scored: #{roll_results[:points_scored]}"
    end
end 