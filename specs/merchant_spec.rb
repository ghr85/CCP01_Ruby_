# Codeclan Project - Solo - Ruby
#Sceficiations for testing merchants model

require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/merchant.rb')
require_relative('../models/transaction.rb')
require_relative('../models/tag.rb')



#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

class TestMerchant < MiniTest::Test

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
    @test_transaction_1 = Transaction.new({
        'tag_id_int' => @test_tag.id,
        'merchant_id_int' => @test_merchant.id,
        'amount_num' => 14,
        'trans_date' => '14/1/19'
        })
        @test_transaction_2 = Transaction.new({
            'tag_id_int' => @test_tag.id,
            'merchant_id_int' => @test_merchant.id,
            'amount_num' => 14,
            'trans_date' => '15/1/19'
            })
            @test_transaction_1.save()
            @test_transaction_1.save()
  end
  def teardown
  Tag.delete(@test_tag.id)
  Merchant.delete(@test_merchant.id)
  Transaction.delete(@test_transaction_1.id)
  Transaction.delete(@test_transaction_2.id)
  end


def test_has_name?
  assert_equal('Sainsburys',@test_merchant.merchant_name_str)
end

def test_sum_spending
  assert_equal("28.00",@test_merchant.sum_spending)
end



end #class end
