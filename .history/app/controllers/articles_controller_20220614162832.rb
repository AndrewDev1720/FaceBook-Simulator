class ArticlesController < ActionController::Base
  def showw()
      # byebug
    @article = Article.find(params[:id])
  end
end
