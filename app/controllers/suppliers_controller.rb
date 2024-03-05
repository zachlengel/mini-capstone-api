class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render :show
  end

  def create
    @supplier = Supplier.create(
      name: params["name"],
      price: params["email"],
      image_url: params["phone_number"],
    )
    if @supplier.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.update(
      name: params["name"] || @supplier.name,
      price: params["email"] || @supplier.price,
      image_url: params["phone_number"] || @supplier.image_url,
    )
    if @supplier.valid?
      render :show
    else
      render json: { errors: @supplier.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.destroy
    render json: { message: "This supplier has been deleted." }
  end
end
