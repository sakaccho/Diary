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

  end

  # POSTで記事を作成する
  def create

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

end
