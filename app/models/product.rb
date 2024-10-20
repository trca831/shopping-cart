class Product < ApplicationRecord
    def title
        "#{name}"
    end
end
