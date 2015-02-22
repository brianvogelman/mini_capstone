class ProductsController < ApplicationController
  def product_data
    @product_data = Product.first
  end

  #def all_the_products
  #  @products = Products.all
  #end

  def add_product
  end

  #def submit_product
  #  product.create({:})
  #end

  def index
    @products = Product.all
    if params[:sort] == "title"
      @products = Product.order(:title) 
    end

    if params[:filter] == "discount"
      @products = @products.where("price <= ?", 10)
    end

    if params[:search]
      @products = @products.where('title Like?', "%" + params[:search] +  "%")
    end

    #elsif params[:random] = "true"
    #  total_products = @products.length
    #  id = 1 + rand(total_products)
    #  redirect_to "/products/" + id.to_s

    if params[:category]
      @products = @products.where(:category => params[:category])
    end
  end

  def show
    @product = Product.find(params[:id])
    @vendor = @product.vendor
  end

  def new
  end

  def create
    @product = Product.create({:image => params[:image], :title => params[:title], :description => params[:description], :brand => params[:brand], :category => params[:category], :price => params[:price]})
    flash[:success] = "Product Added"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.update({:image => params[:image], :title => params[:title], :description => params[:description], :brand => params[:brand], :category => params[:category], :price => params[:price]})
    flash[:success] = "Product Updated"
    redirect_to "/products/#{params[:id]}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:danger] = "Product Deleted"
    redirect_to '/products'
  end

end
