class PostType < ActiveRecord::Base
	has_many :posts

	validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: post_types
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_post_types_on_name  (name) UNIQUE
#
