class Address < ActiveRecord::Base
	belongs_to :user
	has_many :orders
	validates :line1, :city, :state, :zip, presence: true
	validates_numericality_of :zip
	validates :line1, length: { minimum: 5 }
	validates :state, length: { is: 2 }
	
	def to_s
		[line1, city, state, zip].compact.join(', ')
	end
end
