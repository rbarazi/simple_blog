class CommentsController < ApplicationController
  before_filter :load_post
  
  def create
    @comment = @post.comments.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.js
      else
        format.js { render :template => 'comments/fail.rjs'}
      end
    end
  end

  def update
    @comment = @post.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.js
      else
        format.js { render :template => 'comments/fail.rjs'}
      end
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.js
    end
  end
  
  private
    def load_post
      @post = Post.find params[:post_id]
    end
end
