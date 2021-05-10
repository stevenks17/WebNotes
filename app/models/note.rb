class Note < ApplicationRecord
  belongs_to :topic

  validates_length_of :title, maximum: 30
  validates_length_of :body, maximum: 1000

  validate :title_or_body

  private

  def title_or_body
   if title.blank? && body.blank?
      errors[:base] << "Please add a title or message in body to save the note"
    end
  end
end
