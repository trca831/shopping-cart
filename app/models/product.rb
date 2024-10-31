class Product < ApplicationRecord
    # belongs_to :cart

    has_one_attached :avatar
    
    validates :name, presence: true
    validates :price, presence: true
    # validates :image, optional: true
    validates :amount, presence: true

end
