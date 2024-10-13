class DiceSetController
    def initialize()
    end

    def configure_dice(dice_count, sides, drop_dead)
        drop_dead.configure_dice(dice_count, sides)
    end
end