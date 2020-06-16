require 'bundler'
Bundler.require

# require_all 'app/models'

require_all 'app'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "pokemon.db"
)