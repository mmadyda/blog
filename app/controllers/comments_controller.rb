class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@comment.post), notice: "Dziękuję za komentarz"
    end

    def edit
        @comment = Comment.find(params[:id])
        @post = Post.find(params[:post_id])
        
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to post_path(@comment.post), notice: "Dziękuję za poprawki"
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to post_path(@comment.post), notice: "Usunięto komentarz"
    end

    def comment_params
        # paramsy z formularza
        params.require(:comment).permit(:author, :body)
    end

    

end