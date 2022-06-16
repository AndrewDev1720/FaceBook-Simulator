class ArticlesController < ApplicationController
  def show()
    getArticle()
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

  def edit
    getArticle()
  end

  def update
    getArticle()
    if (@article.update(params.require(:article).permit(:title, :description)))
      flash[:notice] = "Article was updated successfully"
      redirect_to article_path(@article)
    else
      render 'edit'
      # redirect_to edit_article_path
    end
  end

  def destroy
    getArticle()
    @article.destroy
    redirect_to articles_path
  end

  private def getArticle()
    @article = Article.find(params[:id])
  end

  def articleParams()
    params.require(:article).permit(:title, :description)
  end
  

end
