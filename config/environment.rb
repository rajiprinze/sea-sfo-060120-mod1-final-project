require 'bundler'
Bundler.require

require_all 'appm/models'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "pokemon.db"
)