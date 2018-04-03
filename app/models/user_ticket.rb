class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :
def buy_date_cannot_be_after_event_start   
 if time < Date.today
  errors.add(:time, "The event already started") 
 end 
validate :buy_date_cannot_be_after_event_start  
end
end
