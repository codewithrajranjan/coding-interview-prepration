> ## Snake and Ladder Game Designing


> ## Understanding the Game

- there is a board with number 1 to 100
- snakes are there with mouth and tail
    - if any player moves to the mouth of snake then his position should be changed to the tail to the snake
- ladders are there with top and bottom
    - if any player moves to the bottom of the ladder then his position will be changed to the top of the ladder
- dice is there which has number from 1 to 6 
- two or more player will be playing the game
    - if the player reaches the 100 position then the will win the game


> ## Identifying the objects in the system

- Player
    - Properties
        - Name : string
        - position : int // this will be the current posittion of the player
- Dice
    - Properties
        - No
- Snake
    - Properties
        - topPosition : int
        - bottomPostion : int
- Ladder
    - Properties
        - topPosition : int
        - bottomPosition : int
- Board
    - Properties
        - size : int
        - snakes : Array of snakes object
        - ladder : Array of ladder object

- Game
    - Properties
        - Board
        - Players : Array of players object
        - currentTurn : Queue // the top of the queue will tell that which player needs to throw the dice


