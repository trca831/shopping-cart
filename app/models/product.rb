class Product < ApplicationRecord
    # belongs_to :cart

    validates :name, presence: true
    validates :price, presence: true
    # validates :image, optional: true
    validates :amount, presence: true

end
