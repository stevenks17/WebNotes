class Note < ApplicationRecord
  belongs_to :topic
  validates :title, presence: true
  validates_length_of :title, maximum: 30
  validates_length_of :body, maximum: 1000
end
