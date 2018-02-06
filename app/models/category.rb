class Category < ApplicationRecord
	validates :categoryname, presence: true,
                    length: { minimum: 5 }

    has_many :products

    
   
end
