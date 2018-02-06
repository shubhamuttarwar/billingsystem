class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   def find_category(catid)

        Category.find(catid).categoryname
    end
    helper_method :find_category
end
