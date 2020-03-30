class Booking < ApplicationRecord
    belongs_to :user

    validates :user_id, {presence: true}
    validates :time, {presence: true}
    validates :date, {presence: true}
end
