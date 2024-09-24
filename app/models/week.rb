class Week < ApplicationRecord
  #belongs_to :event
  has_many :comments, dependent: :destroy
end
