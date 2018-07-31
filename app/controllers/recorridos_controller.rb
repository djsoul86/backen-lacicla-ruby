class RecorridosController < ApplicationController
    def create
        @recorrido = Recorrido.new(tarjeta_params)
        if @recorrido.save
          render json:{status: 'SUCCESS', message:'Recorrido creada', data:@recorrido},status: :ok
        else
          render json:{status: 'ERROR', message:'Recorrido not saved', data:@recorrido.errors},status: :unproncessable_entity
        end
      end
      def getbyid
        @recorridos = Recorrido.where(id_usuario:params[:id_usuario])
        render json:{status: 'SUCCESS', message:'Recorrido encontrado', data:@recorridos},status: :ok
      end
      def tarjeta_params
        params.require(:recorrido).permit(:id_usuario,:id_tarjeta,:puntoinicial,:puntofinal,:kilometrosrecorridos,:tarifa,:idbicicleta)
      end
end
