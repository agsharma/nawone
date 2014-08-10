require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
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
