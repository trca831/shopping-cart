class Product < ApplicationRecord
    belongs_to :cart

    validates :name, presence: true, length: { maximum: 100 } # 2. Validate numericality for price (only decimals, positive values) 
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 10_000 } # 3. Validate presence and format for the image URL 
    validates :image, presence: true, format: { with: /\Ahttps?:\/\/.+\.(jpg|jpeg|png|gif)\z/i, message: "must be a valid image URL" }

end
