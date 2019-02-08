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
also_reload('../models/*')

get '/tags' do #retrieves the overall list of tag
  @tags = Tag.all
  erb ( :"tags/index" )
end

get '/tags/new' do #retrieves the new form for creating tag
  erb(:"tags/new")
end

post '/tags' do #submits data from new tag page to DB
  tag = Tag.new(params)
  tag.save
  erb ( :"tags/index" )
end

post '/tags/:id/delete' do #Deletes singular instance from database
  Tag.delete(params[:id])
  redirect to("/tags") #redirects to route above ^
end
get
