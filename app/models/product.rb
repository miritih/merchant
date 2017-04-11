class Product < ActiveRecord::Base
  def price=(input)
  input.delete!("$")
  super
  end
  validates_numericality_of :price
  validates_numericality_of :stock
end
