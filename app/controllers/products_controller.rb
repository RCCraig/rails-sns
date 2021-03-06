class ProductsController < ApplicationController
  
  def index
    @products = Product.all    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
   
    if @product.save
      flash[:notice] = "Product created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end
 

  private

  def product_params
    params.require(:product).permit!
  end
end
