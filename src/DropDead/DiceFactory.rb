class DiceFactory < IDiceFactory
    def initialize()
        @dice_count = 0
        @sides = 0
    end

    def configure_dice(dice_count, sides)
        raise "Dice count can't be less than 1" if dice_count <= 0
        raise "Sides can't be less than 1" if sides <= 0

        @dice_count = dice_count
        @sides = sides
    end

    def create_dice_set()
        return DiceSet.new(@dice_count, @sides)
    end
end