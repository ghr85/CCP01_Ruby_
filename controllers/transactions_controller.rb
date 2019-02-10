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
  transactions = Transaction.all
  @transactions = transactions.sort_by{|transaction| -transaction.id}
  erb ( :"transactions/index" )
end

get '/transactions/new' do #retrieves the new form for creating transaction
  @transactions = Transaction.all
  @merchants = Merchant.all
  @tags = Tag.all
  erb(:"transactions/new")
end

post '/transactions' do #submits data from new transaction page to DB
  transaction = Transaction.new(params)
  transaction.save
  redirect to("/transactions")
end

post '/transactions/:id/delete' do #Deletes singular instance from database
  Transaction.delete(params[:id])
  redirect to("/transactions")
end

get '/transactions/:id/edit' do #Edit singular instance from database
    @merchants = Merchant.all
    @tags = Tag.all
    @edit_transaction = Transaction.find(params[:id])
    erb(:"transactions/edit")
end

post '/transactions/edit' do #Edits singular instance from database
  transaction = Transaction.new(params)
  transaction.update()
  redirect to("/transactions") #redirects to route above ^
end
