class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index 
        @articles = Article.all
    end

    def new 
        @article = Article.new
    end

    def edit
    
    end

    def create 
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = 'Data saved successfully'
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def update
    
    end
    
end
