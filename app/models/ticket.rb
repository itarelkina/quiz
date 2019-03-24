class Ticket < ApplicationRecord
    validates :Ticket_details, presence: true, length: { maximum: 150, minimum: 3 }
    validates :owner, presence: true, length: { maximum: 50, minimum: 3 }

end