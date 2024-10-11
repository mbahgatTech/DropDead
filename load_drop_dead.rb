# AutoDropDead Interfaces
require "./AutoDropDead/Interfaces/IArena.rb"
require "./AutoDropDead/Interfaces/IPlayers.rb"
require "./AutoDropDead/Interfaces/IScoreboard.rb"

# AutoDropDead Concrete Classes & Dependencies
require "./AutoDropDead/Arena.rb"
require "./AutoDropDead/Players.rb"
require "./AutoDropDead/Scoreboard.rb"
require "./AutoDropDead/DiceSetController.rb"
require "./AutoDropDead/PlayerController.rb"

# DropDead API
require "./DropDead/DropDead.rb"

# DropDead Dependency Interfaces
require "./DropDead/Interfaces/IDiceFactory.rb"
require "./DropDead/Interfaces/ICoordinator.rb"
require "./DropDead/Interfaces/IScoreKeeper.rb"

# DropDead Dependency Concrete Classes & Dependencies
require "./DropDead/DiceFactory.rb"
require "./DropDead/Coordinator.rb"
require "./DropDead/ScoreKeeper.rb"
require "./DropDead/PlayerModel.rb"
require "./DropDead/PointCounter.rb"
require "./DropDead/DiceSet.rb"
require "./DropDead/Dice.rb"