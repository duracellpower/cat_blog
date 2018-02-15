# == Schema Information
#
# Table name: birds
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

class BirdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
