class UsuariosController < ApplicationController
  include Knock::Authenticable
  # protect_from_forgery prepend: true
  # before_action :authenticate_usuario, only: [:show]
  # before_action :set_usuario, only: [:show]
  wrap_parameters :usuario, include: [:nombre,:email,:apellido,:documento,:idusuario,:celular,:direccion,:password, :password_confirmation]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
        #  usuario = Usuario.find(params[:id])
         render json:{status: 'SUCCESS', message:'Loaded article', data:@usuario},status: :ok
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      render json:{status: 'SUCCESS', message:'Saved usuario', data:@usuario},status: :ok
    else
      render json:{status: 'ERROR', message:'User not saved', data:@usuario.errors},status: :unproncessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def current
    render json: current_usuario
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation,:apellido,:documento,:celular,:direccion,:idusuario)
    end
end
