class Product < ApplicationRecord
    def title
        "#{name} - #{price}"
    end
end
