class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new(comment_params)
    
        if @comment.save
          redirect_to article_path(@article), notice: "Your comment has been posted!"
        end  
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end
     
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
    
end
