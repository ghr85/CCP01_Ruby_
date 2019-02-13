# Codeclan Project - Solo - Ruby
#Sceficiations for testing tags model

require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/merchant.rb')
require_relative('../models/transaction.rb')
require_relative('../models/tag.rb')
require_relative('../models/budget.rb')

#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

class TestBudget < MiniTest::Test

def setup


def test_analysis
  assert_equal(3,Budget.analysis(12,2018).length)
  binding.pry
  nil
end


end #class end
