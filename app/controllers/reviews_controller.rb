class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @reviews_params = params.require(:review).permit(:from_id, :to_id, :evaluacion, :comentario)
    @review = Review.create(@reviews_params)
    if @review.save
      redirect_to reviews_index_path, notice: 'Evaluacion creada correctamente'
    else
      redirect_to reviews_new_path, notice: 'Evaluacion no creada'
    end
  end


  def update
    @review = Review.find(params[:id])
    @reviews_params = params.require(:review).permit(:from_id, :to_id, :evaluacion, :comentario)

    if @review.update(@reviews_params)
      redirect_to reviews_index_path, notice: "La evaluacion ha sido editada correctamente"
    else
      redirect_to reviews_index_path, notice: "Error al editar la evaluacion"
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_index_path, notice: "La evaluacion ha sido eliminada"
  end
end
