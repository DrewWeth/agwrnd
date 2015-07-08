<<<<<<< HEAD
# hackmizzou2015
# hackmizzou2015
=======
# AGWRND RISK Wiki #

## System Requirements ##

You'll need...
* a computer
* internet access
* a functional operating system and its requirements
* a functional web browser
* a functional CPU capable of handling aforementioned requirements

## User Requirements ##

Expected outcome
* game will allow visually and logically emulation of the game RISK via internet browsers according to all "rules" described by the official hand book, as referenced: http://www.hasbro.com/common/instruct/Risk1963.PDF
* game will intake options to attack, defend, moving, etc when appropriate

User will...
* be able to make strategical choices based on diplayed game state as displayed in the browser
* be able to enter strategic choices, at legal times, via input options (buttons, point and click, etc) in the browser
* browser will show choices reflected in the visualized game state

## Functional Requirements ##

Game will be a online multi-player strategy game

Game will enable user to...
* take turns at appropriate times
* view all territories & continents and make choices based on their controlled resources
* view all armies and make choices with his/her army
* view 'winnings' and make choices based on their alloted resources
* log on and play the game will other users
* log on and reconnect given disconnection from initiated game
* quit a game
* save a game manually

Constraints and Controls
* game will not allow player actions (e.g. moving, attacking, defending, placing, etc) against listed rules
* game will not distribute distribute armies against rules
* game will not allot territories and continents against rules
* game will not allot turns against the rules
* game will aggregate army and territorial winning/losing math in according to the rules
* game will emulate 6 dice divided into 2 categories of 3 dice each for accurate gameplay
* game will emulate 42 cards representing each territory each with 1 selected value from a pool of 3 values (3 categories)
* game will emulate 2 'wild cards' that represent the 3 values from the normal 44 cards


Handlers
* on illegal move request, game will not refuse action and notify user to select valid move
* on legal mvoe request, game will apply action if appropriate
* disconnection will prompt game state freeze and immediate save

## Non-Functional Requirements ##

### General requirements ###
* turns will be not longer than 20 seconds.
* if user disconnects all actions are frozen and game state is saved
* game will allow reconnections given authentication of user
* game will take no longer than appropriated time to complete
* Users acounts will be secure with encrypted passwords and email recovery
* game will support 2-8 players

### Development ###
* server response will be no longer than 4 seconds on average
* reliability: server online uptime greater than 95% after launch
* robustness: server will restart and allow users to relog in and continue saved games
* portability: clients only need working internet browser to play
* database will purge data game data from exited games and thusly save meta data. Active games will be saved in their 'entirety'- with discretion
* game visualization up to developers discretion

## Rules ##

All game logic processing will occur according to the gameplay rules of the official RISK packet, linked at the beginning of wiki.


>>>>>>> fa8a3578fedfde904e9b379736123e1854ac5160
