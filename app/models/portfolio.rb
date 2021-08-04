class Portfolio < ActiveRecord::Base
    has_one_attached :image, :dependent => :destroy
    serialize :metadata, Array

     
   before_save do
    self.strength.gsub!(/[\[\]\"]/, "") if attribute_present?("strength")
   end
 
end
