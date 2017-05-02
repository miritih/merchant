class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :Product
    validates :order_id, :product_id, presence: true
end
