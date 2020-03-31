class User < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_one_attached :image

    validates :condition, {presence: true}
    validates :dob, {presence: true}
    validates :medication, {presence: true}
    validates :disability, {presence: true}
    validates :goals, {presence: true, length: {maximum: 2000}}
    validates :password_digest, {presence: true, length: {minimum: 6}}
    validates :email, {presence: true}
    validates_format_of :email, with:/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
