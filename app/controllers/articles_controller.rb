class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new; end

  def create
    @article = Article.create(article_params)
    if @article.persisted?
      flash[:notice] = 'Article was successfully posted.'
      redirect_to articles_path
    else
      flash[:alert] = @article.errors.full_messages.to_sentence
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
