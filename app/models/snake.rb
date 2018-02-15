# == Schema Information
#
# Table name: snakes
#
#  id         :integer          not null, primary key
#  name       :string
#  prename    :string
#  birthdate  :date
#  info       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Snake < ApplicationRecord

  validates :name, presence: true

  def age
    today = Date.today
    (today.mjd - birthdate.mjd).to_i
  end
end
