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
  @transactions = Transaction.all()
  erb ( :"transactions/index" )
end

get '/transactions/order' do #retrieves the overall list of transaction
  transactions = Transaction.all()
  case params[:column]
  when 'amount_num'
    if params[:order] == 'ASC'
      @transactions = transactions.sort_by{|transaction| transaction.amount_num.to_i}
    else
     @transactions = transactions.sort_by{|transaction| transaction.amount_num.to_i}.reverse if params[:order]
   end
    #@transactions = transactions.sort_by{|transaction| -transaction.amount_num.to_i}
  when 'trans_date'
    if params[:order] == 'ASC'
    @transactions = transactions.sort_by{|transaction| transaction.trans_date}
  else
    @transactions = transactions.sort_by{|transaction| transaction.trans_date}.reverse
  end
  when 'merchant_name_str'
      if params[:order] == 'ASC'
    @transactions = transactions.sort_by{|transaction| transaction.merchant.merchant_name_str}
  else
    @transactions = transactions.sort_by{|transaction| transaction.merchant.merchant_name_str}
  end
  when 'tag_name_str'
    if params[:order] == 'ASC'
    @transactions = transactions.sort_by{|transaction| transaction.tag.tag_name_str}
  else
    @transactions = transactions.sort_by{|transaction| transaction.tag.tag_name_str}
  end
  end
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
