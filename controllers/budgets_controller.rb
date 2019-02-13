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
  months = ['January','February','March','April','May','June','July','August','September','October','November','December']
  @month = months[params[:month].to_i - 1]
  @budgets = Budget.in_order(params[:month],params[:year],params[:column],params[:order])
  @year = params[:year].to_i
  erb(:"budgets/index")
end
