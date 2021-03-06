class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(message: post_params[:message], user_id: current_user.id)
    redirect_to newsfeed_url
  end

  def newsfeed
    @posts = Post.all.order(created_at: :desc)
  end

  def add_comment
    @comment = Comment.create(message: params[:comment], post_id: params[:post_id], user_id: current_user.id)
    redirect_to newsfeed_url
  end

  def add_like
    post = Post.find(params[:post_id])
    post.update_attribute(:number_of_likes, post.number_of_likes + 1)
    redirect_to newsfeed_url
  end

  def add_like_to_comment
    comment = Comment.find(params[:post_id])
    comment.update_attribute(:number_of_likes, comment.number_of_likes + 1)
    redirect_to newsfeed_url
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
