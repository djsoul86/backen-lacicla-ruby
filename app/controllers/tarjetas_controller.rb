class TarjetasController < ApplicationController
    def create
        @tarjeta = Tarjeta.new(tarjeta_params)
        if @tarjeta.save
          render json:{status: 'SUCCESS', message:'Tarjeta creada', data:@tarjeta},status: :ok
        else
          render json:{status: 'ERROR', message:'Tarjeta not saved', data:@tarjeta.errors},status: :unproncessable_entity
        end
      end

      def tarjeta_params
        params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation,:apellido,:documento,:celular,:direccion,:idusuario)
      end
end
