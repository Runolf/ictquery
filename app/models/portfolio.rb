class Portfolio < ActiveRecord::Base
    has_one_attached :image, :dependent => :destroy


     
   before_save do
    self.strength.gsub!(/[\[\]\"]/, "") if attribute_present?("strength")
   end
 
end
