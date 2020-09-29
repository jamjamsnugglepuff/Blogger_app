class ArticlesController < ApplicationController
    def index
    #getting all articles as an object from the database
    @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end


end
