#Codeclan Week 05 Ruby Project
# Money Tracker - Rex
# DB Seed data file

require_relative('../models/transaction.rb')
require_relative('../models/merchant.rb')
require_relative('../models/tag.rb')

Transaction.delete_all
Tag.delete_all
Merchant.delete_all


tag_1 = Tag.new({
  'tag_name_str' => 'Food',
  'budget_num' => 300
  })

tag_2 = Tag.new({
    'tag_name_str' => 'Clothing',
    'budget_num' => 80
    })

tag_3 = Tag.new({
  'tag_name_str' => 'Bills',
  'budget_num' => 500
      })


tag_1.save
tag_2.save
tag_3.save

merchant_1 = Merchant.new({
  'merchant_name_str' => 'Tesco'
  })

merchant_2 = Merchant.new({
    'merchant_name_str' => 'Primark'
    })
merchant_3 = Merchant.new({
        'merchant_name_str' => 'Nationwide'
        })

merchant_1.save
merchant_2.save
merchant_3.save


transaction_1 = Transaction.new({
    'tag_id_int' => tag_1.id,
    'merchant_id_int' => merchant_1.id,
    'amount_num' => 14,
    'trans_date' => '20/12/2018'
    })

transaction_2 = Transaction.new({
    'tag_id_int' => tag_2.id,
    'merchant_id_int' => merchant_2.id,
    'amount_num' => 20,
    'trans_date' => '20/12/2018'
    })

transaction_3 = Transaction.new({
  'tag_id_int' => tag_3.id,
  'merchant_id_int' => merchant_3.id,
  'amount_num' => 100,
  'trans_date' => '20/12/2018'
    })

  transaction_1.save
  transaction_2.save
  transaction_3.save
