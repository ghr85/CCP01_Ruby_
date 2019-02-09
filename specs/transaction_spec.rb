# Codeclan Project - Solo - Ruby
#Sceficiations for testing transactions model

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
      'tag_name_str' => 'Food'
    }
  )
  @test_tag.save()
  @test_merchant = Merchant.new(
    {
      'merchant_name_str' => 'Tesco'
    }
  )
  @test_merchant.save()
  @test_transaction = Transaction.new({
      'tag_id_int' => @test_tag.id,
      'merchant_id_int' => @test_merchant.id,
      'amount_int' => 14
      })
  @test_transaction.save()
end

def test_has_tag_id?
  assert_equal(@test_tag.id,@test_transaction.tag_id_int)
end
def test_has_merchant_id?
  assert_equal(@test_merchant.id,@test_transaction.merchant_id_int)
end
def test_has_amount_int?
  assert_equal(14,@test_transaction.amount_int)
  # binding.pry
end

def test_merchant?
    assert_equal('Tesco',@test_transaction.merchant.merchant_name_str)
end

def test_tag?
    assert_equal('Food',@test_transaction.tag.tag_name_str)
end


end #class end
