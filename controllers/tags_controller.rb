#Codeclan Ruby Project
#Rex - Money Tracker
#Tags Controller HTTP Routing

#require libraries
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

#require components
# require_relative('../models/transaction.rb')
# require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')
also_reload('../models/*')

get '/tags' do #retrieves the overall list of tag
  @tags = Tag.in_order(params[:column],params[:order])
  erb ( :"tags/index" )
end

get '/tags/new' do #retrieves the new form for creating tag
  erb(:"tags/new")
end

get '/tags/:id/edit' do #Edits singular instance from database
   @edit_tag = Tag.find(params[:id])
   erb(:"tags/edit")
end
get '/tags/:id/transactions' do #Pulls all transactions for that tag
   @tag = Tag.find(params[:id])
   @transactions = @tag.transactions()
   @sum = @tag.sum_spending
   erb(:"tags/transactions")
end

post '/tags' do #Creates a new tag
  tag = Tag.new(params).save
  redirect to("/tags")
end

post '/tags/edit' do #Update Existing Tag
  tag = Tag.new(params).update
  redirect to("/tags")
end

post '/tags/:id/delete' do #Deletes singular instance from database
  Tag.delete(params[:id])
  redirect to("/tags")
end
