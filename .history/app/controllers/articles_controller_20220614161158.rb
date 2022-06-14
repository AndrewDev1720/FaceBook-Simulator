class ArticlesController < ActionController::Base
  def show
    article1 = Article.find(params)
  end
end
