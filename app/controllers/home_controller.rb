class HomeController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @user = current_user
    @book = Book.new
    @search_form = BookSearchForm.new

    if user_signed_in? && params[:search].present?
      # 検索条件を作成する
      @search_form = BookSearchForm.new(search_params)
      # 検索条件に該当するBookデータを取得する
      @books = @search_form.search
    else
      # ログインしていないときは全データを取得する
      @books = Book.order('created_at desc')
    end
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def search_params
    params.require(:search).permit(:title)
  end
end
