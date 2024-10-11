require 'securerandom'

class PlayerModel
    def initialize()
        @id = nil
        @status = nil
        @dice_set = nil
        @point_counter = nil
        @score_keeper = nil
    end

    def create_player(status, point_counter, score_keeper, dice_factory)
        @id = SecureRandom.uuid
        @status = status
        @point_counter = point_counter
        @score_keeper = score_keeper
        @dice_set = dice_factory.create_dice_set()
        @score_keeper.update_points(@id, 0)

        return self
    end

    def perform_turn()
        roll_results = nil

        begin
            roll_results = @dice_set.roll_dice_set()
        rescue StandardError => e
            self.drop_dead()
            return nil;
        end

        points = @point_counter.count_points(roll_results)
        @score_keeper.update_points(@id, points)
        @status = :WAITING

        return {
            :points_scored => points,
            :rolls => roll_results
        }
    end

    def drop_dead()
        @status = :DEAD
    end

    def get_status()
        return @status
    end

    def set_status(status)
        @status = status
    end

    def id()
        return @id
    end
end