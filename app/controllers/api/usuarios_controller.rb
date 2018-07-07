module Api
    class  UsuariosController < ApplicationController
     def index
         usuario = Usuario.order('created_at DESC');
         render json:{status: 'SUCCESS', message:'Loaded usuario', data:usuario},status: :ok
     end
     def show
         usuario = Usuario.find(params[:id])
         render json:{status: 'SUCCESS', message:'Loaded article', data:usuario},status: :ok
     end
     def create
         usuario = Usuario.new(usuario_params)
         if usuario.save
             render json:{status: 'SUCCESS', message:'Saved usuario', data:usuario},status: :ok
         else
             render json:{status: 'ERROR', message:'Article not saved', data:usuario.errors},status: :unproncessable_entity
         end
     end

     def destroy
         usuario = Usuario.find(params[:id])
         usuario.destroy
         render json:{status: 'SUCCESS', message:'Deleted article', data:usuario.errors},status: :unproncessable_entity
     end

     def update
         usuario = Usuario.find(params[:id])
         if usuario.update_attributes(usuario_params)
             render json:{status: 'SUCCESS', message:'Updated article', data:usuario},status: :ok
         else
             render json:{status: 'ERROR', message:'Article not updated', data:usuario.errors},status: :unproncessable_entity
         end
     end

     private
     def usuario_params
         params.permit(:nombre,:apellido,:email,:password,:documento,:celular)
     end

 end
end