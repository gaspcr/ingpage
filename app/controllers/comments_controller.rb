class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comments_params = params.require(:comment).permit(:user_id, :publicacion_id, :contenido)
    @comment = Comment.create(@comments_params)
    if @comment.save
      redirect_to comments_index_path, notice: 'Comentario creado correctamente'
    else
      redirect_to comments_new_path, notice: 'Comentario no creado'
    end
  end


  def update
    @comment = Comment.find(params[:id])
    @comments_params = params.require(:comment).permit(:user_id, :publicacion_id, :contenido)

    if @comment.update(@comments_params)
      redirect_to comments_index_path, notice: "El comentario ha sido editado correctamente"
    else
      redirect_to comments_index_path, notice: "Error al editar el comentario"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_index_path, notice: "El comentario ha sido eliminado"
  end
end
