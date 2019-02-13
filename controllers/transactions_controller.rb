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


get '/transactions' do #retrieves all transactions
  @transactions = Transaction.in_order(params[:column],params[:order])
  erb ( :"transactions/index" )
end

get '/transactions/new' do #retrieves the form for creating new transaction
  @transactions = Transaction.all
  @merchants = Merchant.all
  @tags = Tag.all
  erb(:"transactions/new")
end

get '/transactions/:id/edit' do #get edit transaction form
    @merchants = Merchant.all
    @tags = Tag.all
    @edit_transaction = Transaction.find(params[:id])
    erb(:"transactions/edit")
end

post '/transactions' do #submits data from new transaction page to DB
  transaction = Transaction.new(params).save()
  redirect to("/transactions")
end

post '/transactions/:id/delete' do #Deletes singular transaction from database
  Transaction.delete(params[:id])
  redirect to("/transactions")
end

post '/transactions/edit' do #Edits singular instance from database
  transaction = Transaction.new(params).update()
  redirect to("/transactions")
end
