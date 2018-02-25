class HomeController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @user = current_user
    @books = Book.order('created_at desc')
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
