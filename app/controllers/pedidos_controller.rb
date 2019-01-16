class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
    @pedido = Pedido.find(params[:id])
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
    @pedido = Pedido.find(params[:id])
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)
 
    if @pedido.save
      redirect_to @pedido
    else
      render 'new'
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    @pedido = Pedido.find(params[:id])
 
    if @Pedido.update(pedido_params)
      redirect_to @pedido
    else
      render 'edit'
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido = Pedido.find(params[:id])
    @pedido.destroy
 
    redirect_to pedidos_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:nombre, :mail, :telefono, :descripcion, :tipo, :operacion, :region, :comuna, :direccion, :superficie, :dorms, :bano, :estacionamiento, :anio, :piso)
    end
end
