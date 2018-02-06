class Product < ApplicationRecord
	validates :code, presence: true
    validates :product_name, presence: true, length: {minimum: 4}
    validates :unit_price, presence: true
    validates :sku, presence: true

    belongs_to :category
    def self.search(search)
    	if search
    		Product.where("product_name ILIKE ? OR code ILIKE ?", "%#{search}%", "%#{search}%")
    	else
    		Product.all.order("updated_at DESC").limit(10)
    	end
    end

end
