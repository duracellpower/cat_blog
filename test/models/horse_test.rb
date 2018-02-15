# == Schema Information
#
# Table name: horses
#
#  id         :integer          not null, primary key
#  name       :string
#  pre_name   :string
#  birthdate  :date
#  info       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HorseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
