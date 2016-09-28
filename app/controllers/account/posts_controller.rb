class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def destroy
    @group = current_user.find(params[:id])
    @group.destroy

    flash[:alert] = "Posts deleted"
    redirect_to group_post_path
  end
end
