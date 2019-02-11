#Codeclan Ruby Project
#Rex - Spending Tracker
# Tag model classes

require_relative('../db/sql_runner')
require('pry')

class Tag

  attr_reader :tag_name_str,:budget_num,:id



  def initialize(options)
    @id = options['id'].to_i
    @tag_name_str = options['tag_name_str']
    @budget_num = options['budget_num']
  end

  def save
    sql = "INSERT INTO tags(
    tag_name_str,budget_num
    ) VALUES (
      $1,$2
      ) RETURNING *"
      values = [@tag_name_str,@budget_num]
      tag_obj = SqlRunner.run(sql,values)
      @id = tag_obj.first['id'].to_i

    end

    def update() #issue here with having to update ID? ERROR: source for a multiple-column UPDATE item must be a sub-SELECT or ROW() expression LINE 7: $1 ^

      sql = "UPDATE tags SET
      (
        tag_name_str,budget_num,id
      )
      =
      (
        $1,$2,$3
      )
      WHERE id = $3"
      values = [@tag_name_str,@budget_num,@id]
      SqlRunner.run( sql, values )
    end

    def transactions
      sql = "SELECT * FROM transactions WHERE tag_id_int = $1"
      values = [@id]
      transactions = SqlRunner.run(sql, values)
      transaction_array = transactions.map{|transaction| Transaction.new(transaction)}
      return transaction_array
    end

    def sum_spending
      sql = "SELECT
      tags.tag_name_str, SUM(transactions.amount_num) AS total
      from tags INNER JOIN transactions ON tags.id = transactions.tag_id_int
      GROUP BY tags.tag_name_str, tags.id HAVING tags.id = $1"
      values = [@id]
      results = SqlRunner.run(sql,values)
      sum_hash = results.first
      if sum_hash != nil
        return  "%.2f" % sum_hash['total']
      else return 0
      end
    end

    def self.all()
      sql = "SELECT * FROM tags"
      values = []
      tags = SqlRunner.run(sql, values)
      result = tags.map { |tag| Tag.new( tag ) }
      return result
    end

    def self.delete(id)
      sql = "DELETE FROM tags WHERE id = $1"
      values = [id]
      SqlRunner.run(sql, values)
      return "Removed"
    end

    def self.delete_all()
      sql = "DELETE FROM tags"
      values = []
      SqlRunner.run(sql, values)
    end

    def self.find(id)
      sql = "SELECT * FROM tags WHERE id = $1"
      values = [id]
      results = SqlRunner.run(sql,values)
      tag_hash = results.first
      tag = Tag.new(tag_hash)
      return tag
    end




  end #class end
