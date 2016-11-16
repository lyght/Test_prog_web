class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def show
  @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"

      redirect_to @post

    else
      render 'new'
    end

  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:post).permit(:title, :content, :author)

  end
end
