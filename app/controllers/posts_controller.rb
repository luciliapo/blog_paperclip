class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post_params])

    @post.save
    #redirect_to @post
  end

  private
    def post_params
      params.require(:post).permit(:title)
    end

end
