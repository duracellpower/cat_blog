# == Schema Information
#
# Table name: lions
#
#  id         :integer          not null, primary key
#  name       :string
#  pre_name   :string
#  birthdate  :date
#  info       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lion < ApplicationRecord

  validates :name, presence: true

  def age
    today = Date.today
    (today.mjd - birthdate.mjd).to_i
  end
end
