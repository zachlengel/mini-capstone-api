class Order < ApplicationRecord
  belongs_to :user
end

# Allow users to purchase products

# 1 - Connect order model to product and user models
# 2 - Only allow logged in users to be able to buy. Check for authorization key
# 3 - Have the order model pull product information (id, price and quantity) and display it
# 4 - Get information from user model (address, user_id, name)
