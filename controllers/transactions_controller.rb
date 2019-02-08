#Codeclan Ruby Project
#Rex - Money Tracker
#Transactions Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require components
require_relative('../models/transaction.rb')
require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')
also_reload('../models/*')

get '/transactions' do #retrieves the overall list of transaction
  @transactions = Transaction.all
  erb ( :"transactions/index" )
end

get '/transactions/new' do #retrieves the new form for creating transaction
  erb(:"transactions/new")
end

post '/transactions' do #submits data from new transaction page to DB
  transaction = Transaction.new(params)
  transaction.save
  erb ( :"transactions/index" )
end

post '/transactions/:id/delete' do #Deletes singular instance from database
  Transaction.delete(params[:id])
  redirect to("/transactions")
end
get
