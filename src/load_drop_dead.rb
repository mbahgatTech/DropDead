# AutoDropDead Interfaces
require_relative './AutoDropDead/Interfaces/IArena'
require_relative './AutoDropDead/Interfaces/IPlayers'
require_relative './AutoDropDead/Interfaces/IScoreboard'

# AutoDropDead Concrete Classes & Dependencies
require_relative './AutoDropDead/Arena'
require_relative './AutoDropDead/Players'
require_relative './AutoDropDead/Scoreboard'
require_relative './AutoDropDead/DiceSetController'
require_relative './AutoDropDead/PlayerController'

# DropDead API
require_relative './DropDead/DropDead'

# DropDead Dependency Interfaces
require_relative './DropDead/Interfaces/IDiceFactory'
require_relative './DropDead/Interfaces/ICoordinator'
require_relative './DropDead/Interfaces/IScoreKeeper'

# DropDead Dependency Concrete Classes & Dependencies
require_relative './DropDead/DiceFactory'
require_relative './DropDead/Coordinator'
require_relative './DropDead/ScoreKeeper'
require_relative './DropDead/PlayerModel'
require_relative './DropDead/PointCounter'
require_relative './DropDead/DiceSet'
require_relative './DropDead/Dice'
