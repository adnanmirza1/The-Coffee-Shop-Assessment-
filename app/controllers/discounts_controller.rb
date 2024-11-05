# app/controllers/discounts_controller.rb
class DiscountsController < ApplicationController
    def index
      @discounts = Discount.all
      render json: @discounts
    end
  
    def show
      @discount = Discount.find(params[:id])
      render json: @discount
    end
  
    def create
      @discount = Discount.new(discount_params)
      if @discount.save
        render json: @discount, status: :created
      else
        render json: @discount.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @discount = Discount.find(params[:id])
      if @discount.update(discount_params)
        render json: @discount
      else
        render json: @discount.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @discount = Discount.find(params[:id])
      @discount.destroy
      head :no_content
    end
  
    private
  
    def discount_params
      params.require(:discount).permit(:item_id, :group_discount_id, :discount_type, :discount_percentage)
    end
  end