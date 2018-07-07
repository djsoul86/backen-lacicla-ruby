class Usuario < ApplicationRecord
    validates :nombre, presence: true
    validates :apellido, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :documento, presence: true
    validates :celular, presence: true
    # validates :direccion, presence: true
end
