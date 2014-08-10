class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :published, -> { where(publish_ind: true) }

  has_many :post_images

  belongs_to :category
  belongs_to :site_author
  belongs_to :post_type
	belongs_to :post_publication
	belongs_to :article_author

	validates :article_author_id, :post_publication_id, :article_title, :article_url, presence: true

  validates :category_id, :title, :body, :site_author_id, :post_type_id, presence: true

 #  def to_param
 #  	"#{id}-#{title.downcase.gsub(/[^a-zA-Z0-9]+/, '-').gsub(/-{2,}/, '-').gsub(/^-|-$/, '')}"
	# end
end

# == Schema Information
#
# Table name: posts
#
#  id                  :integer          not null, primary key
#  post_type_id        :integer          default(1), not null
#  category_id         :integer          not null
#  title               :string(255)      not null
#  body                :text             not null
#  site_author_id      :integer          default(1), not null
#  publish_ind         :boolean          default(FALSE)
#  video_url           :text
#  article_author_id   :integer          not null
#  post_publication_id :integer          not null
#  article_title       :text             not null
#  article_url         :text             not null
#  slug                :string(255)      not null
#  created_at          :datetime
#  updated_at          :datetime
#
# Indexes
#
#  index_posts_on_article_author_id    (article_author_id)
#  index_posts_on_category_id          (category_id)
#  index_posts_on_post_publication_id  (post_publication_id)
#  index_posts_on_post_type_id         (post_type_id)
#  index_posts_on_site_author_id       (site_author_id)
#  index_posts_on_slug                 (slug) UNIQUE
#  index_posts_on_title                (title)
#
