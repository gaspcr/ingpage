class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def new
    @publication = Publication.new
  end

  def create
    @publications_params = params.require(:publication).permit(:precio, :titulo, :fotos, :especie, :tipo, :direccion)
    @publication = Publication.create(@publications_params)

    if @publication.save
      redirect_to publications_index_path
    else
      render 'new'
    end
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.find(params[:id])
    @publications_params = params.require(:publication).permit(:titulo, :precio, :tipo, :fotos, :especie, :direccion)

    if @publication.update(@publications_params)
      redirect_to publications_index_path, notice: "La publicación ha sido editada correctamente"
    else
      redirect_to publications_index_path, notice: "Error al editar la publicación"
    end
  end

  def delete
    @publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to publications_index_path, notice: "La publicación ha sido eliminada con éxito"
  end

end
