class Product < ApplicationRecord
	validates :code, presence: true
    validates :product_name, presence: true, length: {minimum: 4}
    validates :unit_price, presence: true
    validates :sku, presence: true

    belongs_to :category

end
