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
  merchants = Merchant.all
  case params[:order]
  when 'ASC'
    @merchants = merchants.sort_by{|merchant| merchant.merchant_name_str}
  when 'DESC'
    @merchants = merchants.sort_by{|merchant| merchant.merchant_name_str}.reverse
  when nil
  @merchants = merchants
  end
  erb ( :"merchants/index" )
end

get '/merchants/new' do #retrieves the new form for creating merchant
  erb(:"merchants/new")
end

post '/merchants' do #submits data from new merchant page to DB
  merchant = Merchant.new(params)
  merchant.save
  redirect to("/merchants")
end

post '/merchants/:id/delete' do #Deletes singular instance from database
  Merchant.delete(params[:id])
  redirect to("/merchants") #redirects to route above ^
end

get '/merchants/:id/edit' do #Edits singular instance from database
   @edit_merchant = Merchant.find(params[:id])
   erb(:"merchants/edit")
end
get '/merchants/:id/transactions' do #Edits singular instance from database
   @merchant = Merchant.find(params[:id]) #get the merchant
   @transactions = @merchant.transactions() # get all the transactions for that merchant, pass it through
   @sum = @merchant.sum_spending
   erb(:"merchants/transactions")
end

post '/merchants/edit' do #Edits singular instance from database
  merchant = Merchant.new(params)
  merchant.update()
  redirect to("/merchants") #redirects to route above ^
end
