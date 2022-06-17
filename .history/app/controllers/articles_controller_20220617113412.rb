class ArticlesController < ApplicationController
  before_action(:getArticle, only: [:show, :edit, :update, :destroy])
  def show()
  end

  def index()
    @articles = Article.all
  end

  def new
    @article = Article.new()
  end

  def create
    @article = Article.new(articleParams())
    if @article.save 
      flash[:notice] = "Article was created Successfully"
      redirect_to article_path(@article.id)
    else
      render "new"
    end
  end

  def funny
    # @article = Article.new(articleParams())
    # if @article.save 
    #   flash[:notice] = "Article was created Successfully"
    #   redirect_to article_path(@article.id)
    # else
    #   render "new"
    # end
    @article = Article.new(articleParams())
    render "new"
  end

  def edit
  end

  def update
    if (@article.update(articleParams()))
      flash[:notice] = "Article was updated successfully"
      redirect_to article_path(@article)
    else3000dit_article_path
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private def getArticle()
    @article = Article.find(params[:id])
  end

  private def articleParams()
    params.require(:article).permit(:title, :description)
  end
  

end
