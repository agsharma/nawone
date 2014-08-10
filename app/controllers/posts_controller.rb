class PostsController < ApplicationController
	def index
		# @posts = Post.all
		@posts_by_month = Post.published.all.order('created_at DESC').group_by { |post| post.created_at.strftime("%A %B %d"", ""%Y") }
	end

	def show
		@post = Post.friendly.find(params[:id])
	end
end