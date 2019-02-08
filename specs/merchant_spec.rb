# Codeclan Project - Solo - Ruby
#Sceficiations for testing merchants model

require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/merchant.rb')


#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

class TestMerchant < MiniTest::Test

def setup
  @test_merchant = Merchant.new(
    {
      'merchant_name_str' => 'Tesco'
    }
  )
end

def test_has_name?
  assert_equal('Tesco',@test_merchant.merchant_name_str)
end

end #class end
