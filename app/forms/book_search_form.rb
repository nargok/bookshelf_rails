class BookSearchForm
  include ActiveModel::Model

  attr_accessor :title

  # 検索条件を作成する
  def search
    rel = Book
    # TODO 部分一致検索にする
    rel = rel.where(title: title) if title.present?
    rel.order('created_at desc')
  end
end