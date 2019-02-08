#Codeclan Ruby Project
# Rex - Money Tracker
# Main Controller HTTP Routing

require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('controllers/transactions_controller')

also_reload('./models/*')

get '/' do
erb(:index)
end
