class Api::V1::ProductsController < ApplicationController
    def index
      products = Product.all
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
      product = Product.new(product_params)
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
  