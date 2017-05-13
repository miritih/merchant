class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product
    validates :order_id, :product_id, presence: true
    validates :quantity, numericality: {greater_than_or_equal_to: 1, only_integer: true}
    def subtotal
    	self.quantity * self.product.price
    end
end
