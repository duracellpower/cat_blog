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

require 'test_helper'

class SnakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
