require 'bundler'
Bundler.require

require_all 'app/models'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "pokemon.db"
)
ActiveRecord::Base.logger = nil
