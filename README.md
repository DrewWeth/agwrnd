# Agwrnd RISK Wiki #

## System Requirements ##

You need...
* a comp
* six set of playing pieces each with different colors consisting of a large number of 3 pointed pieces (representing one army) and seversal 5 pointed pieces (representing 10 armies).
* a player board with 6 continents with territories
* deck of 44 cards plus one useless card
* six dice: 3 white, 3 colored 
* at least one friend

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
* game will not allow player actions (e.g. moving, attacking, defending) against listed rules
* game will not distribute distribute armies against rules
* game will not allot territories and continents against rules
* game will not allot turns against the rules
* game will aggregate army and territorial winning/losing math in according to the rules

Handlers
* on illegal move request, game will not refuse action and notify user to select valid move
* on legal mvoe request, game will apply action if appropriate
* disconnection will prompt game state freeze and immediate save

## Non-Functional Requirements ##

General requirements
* turns will be not longer than 20 seconds.
* if user disconnects all actions are frozen and game state is saved
* game will allow reconnections given authentication of user
* game will take no longer than appropriated time to complete
* Users acounts will be secure with encrypted passwords and email recovery
* game will support 2-8 players

### Development ### 
* server response will be no longer than 4 seconds on average
* reliability: server online uptime >95% after launch
* robustness: server will restart and allow users to relog in and continue saved games
* portability: clients only need working internet browser to play
* database will purge data game data from exited games and thusly save meta data. Active games will be saved in their 'entirety'- with discression



## Rules ##
### Moving ###

### Taking territory ###




## Functional Requirements ##

Game services include...



