class PostImage < ActiveRecord::Base
	# mount_uploader :post_image, PostImageUploader
	belongs_to :post

	validates :post_id, :post_image, :priority, presence: true
	validates :post_id, uniqueness: { scope: :priority }
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
