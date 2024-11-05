# app/controllers/group_discounts_controller.rb
class GroupDiscountsController < ApplicationController
    def index
      @group_discounts = GroupDiscount.all
      render json: @group_discounts
    end
  
    def show
      @group_discount = GroupDiscount.find(params[:id])
      render json: @group_discount
    end
  
    def create
      @group_discount = GroupDiscount.new(group_discount_params)
      if @group_discount.save
        render json: @group_discount, status: :created
      else
        render json: @group_discount.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @group_discount = GroupDiscount.find(params[:id])
      if @group_discount.update(group_discount_params)
        render json: @group_discount
      else
        render json: @group_discount.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @group_discount = GroupDiscount.find(params[:id])
      @group_discount.destroy
      head :no_content
    end
  
    private
  
    def group_discount_params
      params.require(:group_discount).permit(:name)
    end
  end