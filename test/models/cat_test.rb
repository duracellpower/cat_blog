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

require 'test_helper'

class CatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
