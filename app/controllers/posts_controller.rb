class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.post.new(post_params)
    if @post.save
      flash[:success] = 'Post has benn created successfully'
      redirect_to user_post_path(current_user, @post)
    else
      flash.now[:error] = 'Error: Post was not created !!'
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
