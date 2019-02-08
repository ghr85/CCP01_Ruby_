# Codeclan Project - Solo - Ruby
#Sceficiations for testing transactions model

require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/transaction.rb')


#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

class TestTransaction < MiniTest::Test

def setup
  @test_transaction = Transaction.new({
      'tag_id_int' => 1,
      'merchant_id_int' => 2,
      'amount_int' => 14
      })
end

def test_has_tag_id?
  assert_equal(1,@test_transaction.tag_id_int)
end
def test_has_merchant_id?
  assert_equal(2,@test_transaction.merchant_id_int)
end
def test_has_amount_int?
  assert_equal(14,@test_transaction.amount_int)
  # binding.pry
end

end #class end
