class SiteAuthor < ActiveRecord::Base
	has_many :posts

	validates :fullname, :naw_email, :personal_email, presence: true
end

# == Schema Information
#
# Table name: site_authors
#
#  id             :integer          not null, primary key
#  fullname       :string(255)      not null
#  naw_email      :string(255)      not null
#  personal_email :string(255)      not null
#  personal_phone :integer
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_site_authors_on_fullname   (fullname)
#  index_site_authors_on_naw_email  (naw_email)
#
