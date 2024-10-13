class DiceSet
  def initialize(dice_count, sides)
    @dice = Array.new(dice_count, Dice.new(sides))
  end

  def roll_dice_set
    raise 'No Remaining Dice in DiceSet' if @dice.length == 0

    roll_results = []

    @dice.delete_if do |dice|
      roll = dice.roll
      roll_results << roll

      [5, 2].include?(roll)
    end

    roll_results
  end
end
