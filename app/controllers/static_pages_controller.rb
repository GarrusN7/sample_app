class StaticPagesController < ApplicationController
  before_action :authenticate

  def home
    @micropost = current_user.microposts.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def contact
  end

  private

    def authenticate
      redirect_to login_path unless current_user
    end
end
