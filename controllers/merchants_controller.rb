#Codeclan Ruby Project
#Rex - Money Tracker
#Merchants Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require components
require_relative('../models/transaction.rb')
require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')
also_reload('../models/*')

get '/merchants' do #retrieves the overall list of merchant
  @merchants = Merchant.all
  erb ( :"merchants/index" )
end

get '/merchants/new' do #retrieves the new form for creating merchant
  erb(:"merchants/new")
end

post '/merchants' do #submits data from new merchant page to DB
  merchant = Merchant.new(params)
  merchant.save
  erb ( :"merchants/index" )
end

post '/merchants/:id/delete' do #Deletes singular instance from database
  Merchant.delete(params[:id])
  redirect to("/merchants") #redirects to route above ^
end
get
