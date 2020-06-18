# Pokemon - The Last battle
## Repo Link
- <Attach https://github.com/keeks5456/sea-sfo-060120-mod1-final-project> 

## Mission
You are a trainer that has obtained their last gym badge! Congradulations!! Now is the time to prepare for the Elite 4! You have this huge database of all the Pokemon you have caught! Now comes the best part. You must create the best team of 6 Pokemon to challenge the Elite 4 in order to become the Pokemon Champion! 

![Alt Text](https://media.giphy.com/media/26BROEbZKDrqy1UoU/giphy.gif)


## Domain
|    Pokemon       |    Team     | Trainer |
|    ---           |   ----      | -----   |
| name: string     | pokemon_id  | name: string|
| hometown:string  | trainer_id  | hometown: string|
| level:integer    |             | 
| skill:string     |             | 
|ability: string   |             |

## Installations 

Use bundle install to aquire all of your gems needed that is with your Gemfile (with will be provided by Flatiron)
We also installed a tty-font for the Pokemon banner

``` 
bundle install 
bundle install tty-font
```
## C.R.U.D
1. Create: You must choose (create) your team of 6 pokemon to join.
2. Read: You must carefully (read) their stats and decide if they are powerful enough to take on the Elite 4
3. Update: You have the ability to (update) your team - which means adding the pokemon to your team
4. Delete: You can also decide to replace pokemon that may not be ideal for our dream team!

The is a 4 step explination of what we want our program to do as we invisioned it. If you are familiar with the game, a Pokemon trainer has the ability to create their team, they are able to see the status of the Pokemon -- name, level, ability, skills etc), the trainer can add and remove pokemon to and from his team to their liking! 

## How to use?
You simply run rake console in the terminal and watch the program come alive.

## Contribute
What we would love to see is:
1. Be able to add items and berries for our pokemon to hold
2. Have our trainer battle the Elite 4 
  A. this means adding them to the data base 
3. Recreate catching pokemon 


## Stretch Goals
- add items to our pokemon 
- integrate an api 
