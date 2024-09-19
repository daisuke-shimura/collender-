class Event < ApplicationRecord
  has_many :weeks, dependent: :destroy
end
