class PostsController < ApplicationController
  def showall
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])

  end

  def create
    @post = Post.new(user_params)
    if @post.save
      redirect_to @post

    else
      render 'new'
    end
  end


  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(user_params)
      redirect_to @post

    else
      render 'edit'
    end
  end


  def destroy
    @post = Post.find(params[:id])

    @post.destroy
    redirect_to home_path
  end

def search
  @post = Post.where("lower(title) LIKE ? OR lower(content) LIKE ? OR lower(author) LIKE ?","%#{params[:search.downcase]}%","%#{params[:search.downcase]}%", "%#{params[:search.downcase]}%")
end

  private
  def user_params
    params.require(:post).permit(:title, :content, :author, :image)

  end
end
