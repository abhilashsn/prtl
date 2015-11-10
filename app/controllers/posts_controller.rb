class PostsController < ApplicationController
	  before_action :set_posts, only: [:show, :edit, :update, :destroy]

	def index 
		@posts = Post.all
	end

	def new 
		@posts = Post.new
	end
	def create
		@posts = Post.new(post_params)
		if @posts.save
			redirect_to posts_path
		else 
			render :action => "new"
	end
	end
	
	def show 
	end


private 

	def set_posts
		@post = Post.find(params[:id])
	end


	def post_params
		params[:post].permit(:title,:description)
	end

end
