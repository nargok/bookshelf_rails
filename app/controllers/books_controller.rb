class BooksController < ApplicationController
  def create
    if current_user.books.create(book_params)
      flash[:notice] = '投稿が完了しました'
    else
      flash[:error] = '投稿に失敗しました'
    end
  end

  def search

  end

  private
  def book_params
    params.require(:book).permit(:title)
  end
end
