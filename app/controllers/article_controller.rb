class ArticleController < ApplicationController

  # 一覧を表示
  def index
    @articles = Article.all
  end

  # GETで記事を見る
  def show
    @article = Article.find(params[:id])
  end

  # GETで記事作成ページを表示
  def new
    @article = Article.new
  end

  # POSTで記事を作成する
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to controller:'article', action:'index'
    else
      render 'new'
    end
  end

  # GETで記事編集ページを表示
  def edit

  end

  # POSTで記事を更新
  def update

  end

  # POSTで記事を消す
  def destroy

  end

  private
      # Never trust parameters from the scary internet, only allow the white list through.
      def article_params
        params.require(:article).permit(:title, :body)
      end

end
