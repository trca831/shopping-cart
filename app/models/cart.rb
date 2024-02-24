class Cart < ApplicationRecord
  has_one_attached :image

  has_many :cart_items
  has_many :products, through: :cart_items

  def add_product(product)
    products << product unless products.include?(product)
  end

  def remove_product(product)
    products.delete(product)
  end
  
end
