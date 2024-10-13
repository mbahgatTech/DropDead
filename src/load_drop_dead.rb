# AutoDropDead Interfaces
require_relative "./AutoDropDead/Interfaces/IArena.rb"
require_relative "./AutoDropDead/Interfaces/IPlayers.rb"
require_relative "./AutoDropDead/Interfaces/IScoreboard.rb"

# AutoDropDead Concrete Classes & Dependencies
require_relative "./AutoDropDead/Arena.rb"
require_relative "./AutoDropDead/Players.rb"
require_relative "./AutoDropDead/Scoreboard.rb"
require_relative "./AutoDropDead/DiceSetController.rb"
require_relative "./AutoDropDead/PlayerController.rb"

# DropDead API
require_relative "./DropDead/DropDead.rb"

# DropDead Dependency Interfaces
require_relative "./DropDead/Interfaces/IDiceFactory.rb"
require_relative "./DropDead/Interfaces/ICoordinator.rb"
require_relative "./DropDead/Interfaces/IScoreKeeper.rb"

# DropDead Dependency Concrete Classes & Dependencies
require_relative "./DropDead/DiceFactory.rb"
require_relative "./DropDead/Coordinator.rb"
require_relative "./DropDead/ScoreKeeper.rb"
require_relative "./DropDead/PlayerModel.rb"
require_relative "./DropDead/PointCounter.rb"
require_relative "./DropDead/DiceSet.rb"
require_relative "./DropDead/Dice.rb"