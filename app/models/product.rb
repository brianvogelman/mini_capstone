class Product < ActiveRecord::Base
belongs_to :vendor
has_many :product_options
has_many :orders

  def sales_tax
    price * 0.09
  end

  def total
    price + sales_tax
  end

  def sale_message
    if price <= 5
      return "Discount Price"
    elsif price > 5
      return "Sale Price"
    end        
  end

end
