class PostsController < ApplicationController
	
	before_action :post_find, only: [:show, :edit, :update]
	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit

	end

	def update
		@post.update(title: params[:title], description: params[:description])
		@post.save
		redirect_to post_path(@post)
	end

	private

	def post_find
		@post = Post.find(params[:id])
	end
end