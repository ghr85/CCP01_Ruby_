#Codeclan Ruby Project
#Rex - Spending Tracker
# Budget model classes

require_relative('../db/sql_runner')
require('pry')

class Budget

  attr_reader :tag_name_str,:budget_num,:total

  def initialize(options)
    @tag_name_str = options['tag_name_str']
    @budget_num = options['budget_num']
    @total = options['total']
  end

  def self.analysis(month = '12', year = '2018')
    sql ="SELECT
    tags.tag_name_str, tags.budget_num, SUM(transactions.amount_num) AS total
    from tags INNER JOIN transactions ON tags.id = transactions.tag_id_int
    GROUP BY tags.tag_name_str, tags.budget_num, transactions.trans_date
    HAVING EXTRACT(MONTH from trans_date) = $1 AND EXTRACT(YEAR from trans_date) = $2"
    values=[month.to_i,year.to_i]
    results = SqlRunner.run(sql,values)
    return results.map { |budget| Budget.new(budget) } #returns an array of budget objects which are hashes

  end

  def find_id
    sql = 'SELECT id FROM tags WHERE tag_name_str = $1'
    values = [@tag_name_str]
    results = SqlRunner.run(sql,values).first
    return results['id']
  end


  def self.in_order(month = '12', year = '2018',column = 'budget_num',order = 'ASC')
    budgets = Budget.analysis(month,year)
    case column
    when 'budget_num'
      if order == 'ASC'
        sorted = budgets.sort_by{|budget| budget.budget_num.to_i}
      else
        sorted = budgets.sort_by{|budget| budget.budget_num.to_i}.reverse
      end
    when 'tag_name_str'
      if order == 'ASC'
        sorted = budgets.sort_by{|budget| budget.tag_name_str}
      else
        sorted = budgets.sort_by{|budget| budget.tag_name_str}.reverse
      end
    when 'total'
      if order == 'ASC'
        sorted = budgets.sort_by{|budget| budget.total}
      else
        sorted = budgets.sort_by{|budget| budget.total}.reverse
      end
    when nil
      sorted = budgets
    end
  end
end #class end
