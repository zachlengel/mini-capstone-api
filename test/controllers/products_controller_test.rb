require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test", price: 10, description: "test descriptionnnnnnnnnnnnnnnnnnnns", supplier_id: 2 }
      assert_response 200
    end

    assert_difference "Product.count", 0 do
      post "/products.json", params: {}
      assert_response 422
    end
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "tax", "total", "is_discounted?", "images", "description", "supplier_id", "supplier", "created_at", "updated_at"], data.keys
  end

  test "update" do
    product = Product.last
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.price.to_s, data["price"]
    assert_equal product.description, data["description"]
    assert_equal product.supplier_id, data["supplier_id"]

    patch "/products/#{product.id}.json", params: { name: "" }
    assert_response 422
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end

  test "is_discounted?" do
    product = Product.new(price: 11)
    assert_equal false, product.is_discounted?

    product = Product.new(price: 1)
    assert_equal true, product.is_discounted?
  end

  test "tax" do
    product = Product.new(price: 100)
    assert_in_delta 9, product.tax
  end

  test "total" do
    product = Product.new(price: 100)
    assert_in_delta 109, product.total
  end
end
