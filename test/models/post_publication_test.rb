require 'test_helper'

class PostPublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: post_publications
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  company_url :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_post_publications_on_name  (name) UNIQUE
#
