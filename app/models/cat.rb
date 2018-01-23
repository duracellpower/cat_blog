# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  name       :string
#  birthdate  :date
#  info       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pre_name   :string
#

class Cat < ApplicationRecord

  validates :name, presence: true

  def age
    today = Date.today
    (today.mjd - birthdate.mjd).to_i
  end
end
