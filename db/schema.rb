# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_31_170607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descuentos", force: :cascade do |t|
    t.text "codigo"
    t.integer "valor"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_usuario"
  end

  create_table "recorridos", force: :cascade do |t|
    t.integer "id_usuario"
    t.integer "id_tarjeta"
    t.string "puntoinicial"
    t.string "puntofinal"
    t.integer "kilometrosrecorridos"
    t.string "tarifa"
    t.string "idbicicleta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tarjeta", force: :cascade do |t|
    t.string "numero"
    t.string "fecha"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_usuario"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "apellido"
    t.text "documento"
    t.text "celular"
    t.text "direccion"
    t.text "idusuario"
  end

end
