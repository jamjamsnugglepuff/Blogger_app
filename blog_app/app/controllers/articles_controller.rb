class ArticlesController < ApplicationController
    include ArticlesHelper
    def index
    #getting all articles as an object from the database
    @articles = Article.all
    end
    # showing our articles
    def show
        @article = Article.find(params[:id])
    end

    # creating a new article
    def new
        @article = Article.new
    end

    def create
       @article = Article.new(articles_param)
       @article.save
       flash.notice = "Article #{@article.title} was made"
       redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:id])
        flash.notice = "Article #{@article.title} was deleted"
        @article.destroy
        redirect_to articles_path
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(articles_param)
        flash.notice = "Article #{@article.title} was updated"
        redirect_to article_path(@article)
    end



    




end
