# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "Coffee Table", price: 59.99, image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F91tacYay1LL.jpg&tbnid=WIS4Ly4Ng5NMNM&vet=12ahUKEwjI27S8msyEAxU4Et4AHeyOBIsQ94IIKAZ6BQgBEMMC..i&imgrefurl=https%3A%2F%2Fwww.amazon.com%2FCoffee-Surface-Industrial-Furniture-Storage%2Fdp%2FB0888JVZH4&docid=_SA_j6_V1Am4cM&w=2400&h=2400&q=coffee%20table&client=safari&ved=2ahUKEwjI27S8msyEAxU4Et4AHeyOBIsQ94IIKAZ6BQgBEMMC", description: "24 inch oak wood coffee table")

Product.create(name: "Leather Couch", price: 199.99, image_url: "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwivm_uem8yEAxUhTEcBHe9qAr8YABAMGgJxdQ&gclid=CjwKCAiArfauBhApEiwAeoB7qASg0Xk2RrXwcWcFFAbxpL7yTmz0DfJu5Pxm1Io7UGAueJpooDUokBoCtkoQAvD_BwE&ohost=www.google.com&cid=CAESV-D2Uo-zkVuvGFblLFSP5jc6z77UV-zXbBSqR-MZA7nyr_fGmOTZ3nEUlpru5840aY12N7i2CSIWiujr5f4jJaNVDf32zD5AlIOFZwTS8MoC6Y-fBNbBCw&sig=AOD64_06sX-VQysnZwGs9U3nsNS0cuRIFQ&ctype=5&q=&ved=2ahUKEwilnvOem8yEAxXDhIkEHW_zDG4Qwg8oAXoECAcQFQ&adurl=", description: "A large couch with pull out foot rests and cup holders.")
