class ArticlesController < ActionController::Base
  def show
    @article = Article.find(params[:id])
  end
end
