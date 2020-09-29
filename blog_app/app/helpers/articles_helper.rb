module ArticlesHelper
    def articles_param
        params.require(:article).permit(:title, :body, :tag_list, :image)
    end

end
