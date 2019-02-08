# Codeclan Project - Solo - Ruby
#Sceficiations for testing merchants model

require('minitest')
require('minitest/rg')
require_relative('../models/merchants.rb')

#Database CRUD actions are deemed to be tested by visual confirmation of valid data in Postico

def setup
  @test_merchant = Merchant.new(
    {
      'merchant_name_str' => 'Tesco'
    }
  )
end

def test has_name?
  assert_equal('Tesco',@test_merchant.merchant_name_str)
end
