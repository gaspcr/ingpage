class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @requests_params = params.require(:request).permit(:user_id, :publicacion_id, :descripcion)
    @request = Request.create(@requests_params)
    if @request.save
      redirect_to requests_index_path, notice: 'Solicitud enviada correctamente'
    else
      redirect_to requests_new_path, notice: 'Solicitud no enviada'
    end
  end


  def update
    @request = Request.find(params[:id])
    @requests_params = params.require(:request).permit(:user_id, :publicacion_id, :descripcion)

    if @request.update(@requests_params)
      redirect_to requests_index_path, notice: "La solicitud ha sido editada correctamente"
    else
      redirect_to requests_index_path, notice: "Error al editar la solicitud"
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def delete
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to requests_index_path, notice: "La solicitud ha sido eliminada"
  end
end
