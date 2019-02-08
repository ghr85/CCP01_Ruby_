#Codeclan Ruby Project
# Rex - Money Tracker
# Main Controller HTTP Routing

require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/transaction.rb')
require_relative('./models/merchant.rb')
require_relative('./models/tag.rb')
also_reload('./models/*')

get '/' do
erb(:index)
end
