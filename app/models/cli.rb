
#  #!/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 

    def add_pokemon(pokemon)
        new_pokemon = Pokemon.all.find_by name: pokemon
        Team.all <<  new_pokemon.name
        ## can add to Team.all  need to make create team instances
    end 

    # def empty_team
    #     puts "hello before your big fight you are going to need a pokemon "
    #     add_pokemon
    # end 

    def remove_pokemon (pokemon)


    end

    def view_team
        Team.all
        if Team.all == []
            return "You don't have a team yet"
        end 
    end 

end 

