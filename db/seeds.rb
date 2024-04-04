# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create!(name: "Zach", email: "zach@email.com", password: "password", admin: true)
User.create!(name: "Test", email: "test@email.com", password: "password")

Supplier.create!(name: "Amazon", email: "amazon@test.com", phone_number: "4232343234")
Supplier.create!(name: "ThinkGeek", email: "thinkgeek@test.com", phone_number: "6232343234")

Product.create!(supplier_id: 1, name: "Wooden Shovel", price: 10, description: "Shovel made of solid oak logs. Not very good at digging.")
Product.create!(supplier_id: 2, name: "Diamond Sword", price: 64, description: "Used to defend against creatures ranging from skeletons to dragons. Very shiny.")
Product.create!(supplier_id: 1, name: "Carrots", price: 2, description: "Food for humans and farm animals. Pigs love them!")
Product.create!(supplier_id: 1, name: "Iron Pickaxe", price: 50, description: "Works great for long mining trips.")
Product.create!(supplier_id: 2, name: "Leather Boots", price: 100, description: "Soft leather boots for any adventurer.")


Image.create!(product_id: 1, url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg")
Image.create!(product_id: 2, url: "http://www.notcot.com/images/guide.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 4, url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776")
Image.create!(product_id: 5, url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg")
Image.create!(product_id: 6, url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg")
Image.create!(product_id: 7, url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png")
