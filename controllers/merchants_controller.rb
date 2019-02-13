#Codeclan Ruby Project
#Rex - Money Tracker
#Merchants Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require components
require_relative('../models/merchant.rb')
also_reload('../models/*')

get '/merchants' do #retrieves all merchants in specified order
  @merchants = Merchant.in_order(params[:order])
  erb ( :"merchants/index" )
end

get '/merchants/new' do #gets create merchant form
  erb(:"merchants/new")
end

get '/merchants/:id/edit' do #Edits singular instance from database
   @edit_merchant = Merchant.find(params[:id])
   erb(:"merchants/edit")
end

get '/merchants/:id/transactions' do #Shows all transactions for a singular merchant
   @merchant = Merchant.find(params[:id])
   @transactions = @merchant.transactions()
   @sum = @merchant.sum_spending
   erb(:"merchants/transactions")
end

post '/merchants' do #Creates a new merchant
  merchant = Merchant.new(params).save()
  redirect to("/merchants")
end

post '/merchants/edit' do #Edits singular merchant from database
  merchant = Merchant.new(params).update()
  redirect to("/merchants")
end

post '/merchants/:id/delete' do #Deletes singular merchant in database
  Merchant.delete(params[:id])
  redirect to("/merchants")
end
