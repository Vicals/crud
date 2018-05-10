class PostController < ApplicationController
  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save

    redirect_to '/post/index'
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all.reverse
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save

    redirect_to "/post/show/" + params[:id]
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to '/post/index'
  end
end
