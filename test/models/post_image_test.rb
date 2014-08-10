require 'test_helper'

class PostImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: post_images
#
#  id         :integer          not null, primary key
#  post_id    :integer          not null
#  post_image :string(255)      not null
#  priority   :integer          default(1), not null
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_post_images_on_post_id               (post_id)
#  index_post_images_on_priority              (priority)
#  index_post_images_on_priority_and_post_id  (priority,post_id) UNIQUE
#
