class TarjetasController < ApplicationController
    def create
        @tarjeta = Tarjeta.new(tarjeta_params)
        if @tarjeta.save
          render json:{status: 'SUCCESS', message:'Tarjeta creada', data:@tarjeta},status: :ok
        else
          render json:{status: 'ERROR', message:'Tarjeta not saved', data:@tarjeta.errors},status: :unproncessable_entity
        end
      end
      def index
        @tarjetas = Tarjeta.all
        render json:{status: 'SUCCESS', message:'Tarjeta creada', data:@tarjetas},status: :ok
      end
      def getbyid
        @tarjetas = Tarjeta.where(id_usuario:params[:id_usuario])
        render json:{status: 'SUCCESS', message:'Tarjeta encontrada', data:@tarjetas},status: :ok
      end
      def tarjeta_params
        params.require(:tarjeta).permit(:numero,:fecha,:codigo,:id_usuario)
      end
end
