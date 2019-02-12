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
require_relative('../models/budget.rb')
also_reload('../models/*')



get '/budgets' do
  months = ['January','February','March','April','May','June','July','August','September','October','November','December']
  @month = months[params[:month].to_i - 1]
  budgets = Budget.analysis(params[:month],params[:year])
  @year = params[:year].to_i

  case params[:column]
  when 'budget_num'
    if params[:order] == 'ASC'
      @budgets = budgets.sort_by{|budget| budget.budget_num.to_i}
    else
      @budgets = budgets.sort_by{|budget| budget.budget_num.to_i}.reverse
    end
  when 'tag_name_str'
    if params[:order] == 'ASC'
      @budgets = budgets.sort_by{|budget| budget.tag_name_str}
    else
      @budgets = budgets.sort_by{|budget| budget.tag_name_str}.reverse
    end
  when 'total'
    if params[:order] == 'ASC'
      @budgets = budgets.sort_by{|budget| budget.total}
    else
      @budgets = budgets.sort_by{|budget| budget.total}.reverse
    end
  when nil
    @budgets = budgets
  end
  erb(:"budgets/index")
end
