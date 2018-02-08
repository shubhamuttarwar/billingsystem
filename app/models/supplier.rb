class Supplier < ApplicationRecord

	validates :firstname, presence: true, length: {minimum: 3}
	validates :lastname, presence: true, length: {minimum: 3}
	validates :phone, presence: true, length: {is: 10}, :uniqueness => true
	validates :address, presence: true, length: {minimum: 30}
	def self.search(search)
    	if search
    		Supplier.where("lastname ILIKE ? OR firstname ILIKE ?", "%#{search}%", "%#{search}%")
    	else
    		Supplier.all.order("updated_at DESC").limit(5)
    	end
    end
end
