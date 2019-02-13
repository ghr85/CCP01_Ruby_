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



end #class end
