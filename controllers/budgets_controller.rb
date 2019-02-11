#Codeclan Ruby Project
#Rex - Money Tracker
#Tags Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require components
require_relative('../models/transaction.rb')
require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')
require_relative('../models/budget.rb')
also_reload('../models/*')



get '/budgets' do
erb(:"budgets/index")
end


get '/budgets/results' do 
  @budgets = Budget.analysis(params[:month],params[:year])
  erb(:"budgets/results")
end
