#Codeclan Ruby Project
#Rex - Spending Tracker
# Merchant model classes
require_relative('../db/sql_runner')
require('pry')

class Merchant

  attr_reader :merchant_name_str,:id


def initialize(options)
  @id = options['id'].to_i
  @merchant_name_str = options['merchant_name_str']
end

def save
sql = "INSERT INTO merchants(
merchant_name_str
) VALUES (
  $1
  ) RETURNING *"
values = [@merchant_name_str]
merchant_obj = SqlRunner.run(sql,values)
@id = merchant_obj.first['id'].to_i

end

def update()

  sql = "UPDATE merchants SET
  (
    merchant_name_str,id
  )
  =
  (
    $1,$2
  )
  WHERE id = $2"
  values = [@merchant_name_str,@id]
  SqlRunner.run( sql, values )
end

def self.all()
  sql = "SELECT * FROM merchants"
  values = []
  merchants = SqlRunner.run(sql, values)
  result = merchants.map { |merchant| Merchant.new( merchant ) }
  return result
end

def self.delete(id)
  sql = "DELETE FROM merchants WHERE id = $1"
  values = [id]
  SqlRunner.run(sql, values)
  return "Removed"
end

def self.delete_all()
  sql = "DELETE FROM merchants"
  values = []
  SqlRunner.run(sql, values)
end

def self.find(id)
  sql = "SELECT * FROM merchants WHERE id = $1"
  values = [id]
  results = SqlRunner.run(sql,values)
  merchant_hash = results.first
  merchant = Merchant.new(merchant_hash)
  return merchant
end


end #class end
