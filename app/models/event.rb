class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets

	def date_validation
	  if self[:start_date] < Date.today
	    errors[:start_date] << "Error message"
	    return false
	  else
	    return true
	  end
	end
  validate :date_validation
       date_time_validation
        if self[:start_date]    
end
