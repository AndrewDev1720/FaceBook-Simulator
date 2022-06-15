class ArticlesController < ApplicationController
  def show()
    @article = Article.find(params[:id])
  end

  def index()
    @articles = Article.all
  end

  def new
    @article = Article.new()
  end

  def create
    # render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save 
      flash[:notice] = "Article was created Successfully"
      redirect_to article_path(@article.id)
    else
      render "new"
    end
  end

end
