class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
	validates :phone, length: { in: 9..12 }
	validates :phone, numericality: { only_integer: true }
	validates :password, length: { in: 8..12 }
	validates :password, format: { with: /\A(?=.*[a-z])[a-z\d]+\Z/i }
	validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
end
