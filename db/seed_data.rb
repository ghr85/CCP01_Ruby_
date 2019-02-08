#Codeclan Week 05 Ruby Project
# Money Tracker - Rex
# DB Seed data file

require('../models/transaction.rb')
require('../models/merchants.rb')
require('../models/tags.rb')

Transaction.delete_all
Tag.delete_all
Merhcant.delete_all


tag_1 = Tag.new({
  'tag_name_str' => 'Food'
  })

tag_2 = Tag.new({
    'tag_name_str' => 'Clothing'
    })

tag_3 = Tag.new({
  'tag_name_str' => 'Bills'
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

merhcant_1.save
merchant_2.save
merchant_3.save


transaction_1 = Transaction.new({
    'tag_id' => 1,
    'merchant_id' => 2,
    'amount_int' => 14
    })

transaction_2 = Transaction.new({
    'tag_id' => 2,
    'merchant_id' => 2,
    'amount_int' => 20
    })

transaction_3 = Transaction.new({
  'tag_id' => 3,
  'merchant_id' => 3,
  'amount_int' => 100
    })

  transaction_1.save
  transaction_2.save
  transaction_3.save
