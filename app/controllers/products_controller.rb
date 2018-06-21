class ProductsController < ApplicationController
  def changetall
      @tall=update
  end
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show
      @product = Product.find(params[:id])
      @tall=1600
      
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
     
      redirect_to products_path
    else
      render 'edit'
    end
  end
  
  def upload
  #  @product = Product.find(params[:id])
   @product = Product.new(product_params)
    file = params[:pic]
    uploader = UploadUploader.new
    uploader.store!(file)
    redirect_to '/'
#    redirect_to uploader.url
    
  #  uploader.save!
   # each_product_url = @product.url
  #  puts each_product_url
   # each_product_url.transform_values {uploader.url}
    
  #  redirect_to products_path
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path    
  end

  private
    def product_params
      params.require(:product).permit(:title, :price, :length, :width, :height, :url)
    end
end
