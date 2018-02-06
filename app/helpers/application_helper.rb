module ApplicationHelper

	def currency(price)
		number_to_currency(price, options = {:unit => '₹'})
	end

end
