class Message < ApplicationRecord
  validates :text, presence: true
  validates :text, length: { minimum: 5 }

  belongs_to :user

end