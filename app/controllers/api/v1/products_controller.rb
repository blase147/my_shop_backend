class Api::V1::ProductsController < ApplicationController
    def index
      products = Product.all.with_attached_product_image.map do |product|
        {
          id: product.id,
          name: product.name,
          description: product.description,
          price: product.price,
          discount: product.discount,
          category: product.category,
          product_type: product.product_type,
          inventory: product.inventory,
          product_image_url: url_for(product.product_image),
          # Include other attributes as needed
        }
      end
  
      render json: products, status: 200
    end
  
    def show
      product = Product.find_by(id: params[:id])
      if product
        render json: product, status: 200
      else
        render json: { error: 'No product available' }
      end
    end
  
    def create
      product = Product.new(
        name: product_params[:name],
        category: product_params[:category],
        product_type: product_params[:product_type],
        price: product_params[:price],
        inventory: product_params[:inventory],
        color: product_params[:color],
        discount: product_params[:discount],
        product_image: product_params[:product_image],
        description: product_params[:description]
      )
      if product.save
        render json: product, status: 200
      else
        render json: { error: 'Error Creating...' }
      end
    end
  
    def destroy
      product = Product.find_by(id: params[:id])
      return unless product
  
      product.destroy
      render json: 'Product has been deleted'
    end
  
    private
  
    def product_params
      params.require(:product).permit(
        :product_image,
        :name,
        :discount,
        :category,
        :product_type,
        :inventory,
        :price,
        :color
      )
    end
  end
  