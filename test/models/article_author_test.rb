require 'test_helper'

class ArticleAuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: article_authors
#
#  id         :integer          not null, primary key
#  fullname   :string(255)      not null
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_article_authors_on_fullname  (fullname)
#
