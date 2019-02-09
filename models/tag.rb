#Codeclan Ruby Project
#Rex - Spending Tracker
# Tag model classes

require_relative('../db/sql_runner')
require('pry')

class Tag

  attr_reader :tag_name_str,:id


def initialize(options)
  @id = options['id'].to_i
  @tag_name_str = options['tag_name_str']
end

def save
sql = "INSERT INTO tags(
tag_name_str
) VALUES (
  $1
  ) RETURNING *"
values = [@tag_name_str]
tag_obj = SqlRunner.run(sql,values)
@id = tag_obj.first['id'].to_i

end

def update() #issue here with having to update ID? ERROR: source for a multiple-column UPDATE item must be a sub-SELECT or ROW() expression LINE 7: $1 ^ 

  sql = "UPDATE tags SET
  (
    tag_name_str,id
  )
  =
  (
    $1,$2
  )
  WHERE id = $2"
  values = [@tag_name_str,@id]
  SqlRunner.run( sql, values )
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
