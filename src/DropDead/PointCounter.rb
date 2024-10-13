class PointCounter
    def initialize()
    end

    def count_points(roll_results)
        return 0 if roll_results.include?(5) || roll_results.include?(2)
        
        points = 0
        roll_results.each { |roll| points += roll }
        return points
    end
end