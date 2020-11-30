class Booking < ApplicationRecord
  belongs_to :nanny, class_name: "User", foreign_key: "nanny_id", primary_key: :id
  belongs_to :parent, class_name: "User", foreign_key: "parent_id", primary_key: :id
  has_many :messages
end
