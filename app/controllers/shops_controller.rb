class ShopsController < ApplicationController
  before_action :shop, except: [:index, :new, :create]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
      if @shop.save
        redirect_to shop_path(@shop)
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :hour, :base_rate, :descripton) 
  end

   def shop
    @shop = Shop.find(params[:id])
   end
end
