# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to photos_path, notice: 'Comentario añadido exitosamente.'
    else
      render 'photos/index'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

