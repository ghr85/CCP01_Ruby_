#Codeclan Ruby Project
# Rex - Money Tracker
# Main Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require related files ESSENTIAL!
require_relative('controllers/transactions_controller')
require_relative('controllers/merchants_controller')
require_relative('controllers/tags_controller')
require_relative('controllers/budgets_controller')
require_relative('models/quotes')
require_relative('models/month')

also_reload('./models/*')

get '/' do
  @quote = Quote.all.sample
erb(:index)
end
