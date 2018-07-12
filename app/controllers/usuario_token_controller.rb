class UsuarioTokenController < ApplicationController
    protect_from_forgery prepend: true
    before_action :authenticate

    

    def create
        puts auth_params[:email]
        puts auth_params[:password]
        puts "Test"
        puts auth_token
      render json: auth_token, status: :created
    end

  private
    def authenticate
      puts "autenticando usuario..."
      unless entity.present? && entity.authenticate(auth_params[:password])
        raise Knock.not_found_exception_class
      end
    end

    

    def entity
      @entity ||=
        if entity_class.respond_to? :from_token_request
          entity_class.from_token_request request
        else
          entity_class.find_by email: auth_params[:email]
        end
    end

    def entity_class
      entity_name.constantize
    end

    def entity_name
      self.class.name.scan(/\w+/).last.split('TokenController').first
    end

    def auth_token
        puts "Entrando a Token"
        if entity.respond_to? :to_token_payload
            puts entity
          AuthToken.new payload: entity.to_token_payload
        else
            puts entity.id
            puts entity.nombre
            puts entity.email
            puts entity.password_digest
          AuthToken.new payload: { sub: entity.id }
        end
      end

    def auth_params
      params.require(:auth).permit :email, :password
    end
  end

