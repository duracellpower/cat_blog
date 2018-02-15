class Animal < ApplicationRecord
  validates :name, presence: true

  def age
    if birthdate
      today = Date.today
      (today.mjd - birthdate.mjd).to_i
    end
  end
end
