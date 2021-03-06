# Codeclan Project - Solo - Ruby
# Specifications for testing transactions model

require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/tag.rb')
require_relative('../models/merchant.rb')
require_relative('../models/transaction.rb')



#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

class TestTransaction < MiniTest::Test

def setup
  @test_tag = Tag.new(
    {
      'tag_name_str' => 'Booze',
      'budget_num' => 50
    }
  )

  @test_merchant = Merchant.new(
    {
      'merchant_name_str' => 'Sainsburys'
    }
  )
  @test_tag.save()
  @test_merchant.save()
  @test_transaction = Transaction.new({
      'tag_id_int' => @test_tag.id,
      'merchant_id_int' => @test_merchant.id,
      'amount_num' => 14,
      'trans_date' => '14/1/19'
      })
end

def teardown
Tag.delete(@test_tag.id)
Merchant.delete(@test_merchant.id)
end

def test_has_tag_id?
  assert_equal(@test_tag.id,@test_transaction.tag_id_int)
end
def test_has_merchant_id?
  assert_equal(@test_merchant.id,@test_transaction.merchant_id_int)
end
def test_has_amount_num?
  assert_equal(14,@test_transaction.amount_num)
  # binding.pry
end
def test_has_date?
  assert_equal('14/1/19',@test_transaction.trans_date)
  # binding.pry
end

def test_merchant?
  @test_transaction.save()
    assert_equal('Sainsburys',@test_transaction.merchant.merchant_name_str)
  Transaction.delete(@test_transaction.id)
end

def test_tag?
  @test_transaction.save()
    assert_equal('Booze',@test_transaction.tag.tag_name_str)
  Transaction.delete(@test_transaction.id)
end

def test_sum?
  assert_equal("134.00",Transaction.sum()) #this will return as string due to formatting
end


end #class end
