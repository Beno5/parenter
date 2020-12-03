class Review < ApplicationRecord
  belongs_to :nanny, class_name: "User", foreign_key: "nanny_id", primary_key: :id
  belongs_to :parent, class_name: "User", foreign_key: "parent_id", primary_key: :id
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5,
  message: '%{value} is not in category' }
end
