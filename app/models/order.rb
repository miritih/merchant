class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :address
  has_many :order_items, dependent: :destroy  
  def total
  total=0
  self.order_items.each{|item| total+=item.subtotal}
  total
  end 
end
