class DescuentosController < ApplicationController
    def getByCodigo
        if Descuento.where(codigo:params[:codigo]).exists?
            @descuentos = Descuento.where(codigo:params[:codigo])
            render json:{status: 'SUCCESS', message:'Existe',data:@descuentos},status: :ok
            puts 'existe'
        else
            render json:{status: 'SUCCESS', message:'No existe'},status: :ok
            puts 'no existe'
        end
    end
end
