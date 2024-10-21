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

      validates :name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
      validates :amount, presence: true
      validates :price, presence: true, numericality: { greater_than: 0 }

  
end
