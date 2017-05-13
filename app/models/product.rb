class Product < ActiveRecord::Base
  has_many :order_items
  def price=(input)
  input.delete!("$")
  super
  end
  validates_numericality_of :price
  validates :stock, numericality: { only_integer: true, message: "only allows positive integers"}
end
