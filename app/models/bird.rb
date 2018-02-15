class Bird < ApplicationRecord
  validates :name, presence: true

  def age
    today = Date.today
    (toda
end
