# Codeclan Project - Solo - Ruby
#Sceficiations for testing tags model

require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/tag.rb')


#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

class TestTag < MiniTest::Test

def setup
  @test_tag = Tag.new(
    {
      'tag_name_str' => 'Food'
    }
  )
end

def test_has_name?
  assert_equal('Food',@test_tag.tag_name_str)
end

end #class end
