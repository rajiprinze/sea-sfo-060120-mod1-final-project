# Pokemon - The Last battle

## Getting Started
In order to get started with this program, the language of choice will be Ruby, we will also be using squlite3, ActiveRecords and sinatra

```
gem 'sqlite3'
gem 'activerecord', '~> 5.2.3'
gem 'sinatra-activerecord'
```

## Installing
You will need to do a simple bundle install in the terminal to activate the gems in the Gemfile.

```
bundle install
```

## Overview
You are a trainer that has obtained their last gym badge! Congradulations!! Now is the time to prepare for the Elite 4! You have this huge database of all the Pokemon you have caught! Now comes the best part. You must create the best team of 6 Pokemon to challenge the Elite 4 in order to become the Pokemon Champion! 

## Using C.R.U.D

The main objective of this project is to implement CRUD. 

1. Create: You must choose (create) your team of 6 pokemon to join.
2. Read: You must carefully (read) their stats and decide if they are powerful enough to take on the Elite 4
3. Update: You have the ability to (update) your team - which means adding the pokemon to your team
4. Delete: You can also decide to replace pokemon that may not be ideal for our dream team!

The is a 4 step explination of what we want our program to do as we invisioned it. If you are familiar with the game, a Pokemon trainer has the ability to create their team, they are able to see the status of the Pokemon -- name, level, ability, skills etc), the trainer can add and remove pokemon to and from his team to their liking!

![Alt Text](https://media.giphy.com/media/26BROEbZKDrqy1UoU/giphy.gif)


## Domain
|    Pokemon       |    Team     | Trainer          |
|    ---           |   ----      | -----            |
| name: string     | pokemon_id  | name: string     |
| hometown:string  | trainer_id  | hometown: string |
| level:integer    |             | 
| skill:string     |             | 
|ability: string   |             


## Running The Test 

There are two options to run the the program! You can call it through the files:
```
ruby bin/run.rb
```
You can also call it from the rake file:
```
rake play 
```
## Built With

This program is built with:
- Ruby 
- Active Records 5.2
- Sinatra

## Contribute
What we would love to see is:
1. Be able to add items and berries for our pokemon to hold
2. Have our trainer battle the Elite 4 
  A. this means adding them to the data base 
3. Recreate catching pokemon 

## Contributors
- Keeks5456
- bbtrombone01


## Stretch Goals
- add items to our pokemon 
- integrate an api 
