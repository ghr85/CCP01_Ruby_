#Codeclan Ruby Project
#Rex - Money Tracker
#Tags Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require components
require_relative('../models/budget.rb')
require_relative('../models/month.rb')
also_reload('../models/*')

get '/budgets' do #get all transactions for selected month/year in selected order
  @month = Month.all()[params[:month].to_i - 1]
  @budgets = Budget.in_order(params[:month],params[:year],params[:column],params[:order])
  @year = params[:year].to_i
  erb(:"budgets/index")
end
