# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_03_181659) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.integer "id_desafio"
    t.integer "rut_person"
    t.string "dv_rut_person"
    t.integer "id_causa"
    t.integer "puntaje_causas"
    t.date "fecha_inicio"
    t.date "fecha_termino"
    t.text "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deuda_users", force: :cascade do |t|
    t.integer "rut_person"
    t.string "dv_rut_person"
    t.string "institucion_1"
    t.string "tipo_deuda_1"
    t.integer "monto_deuda_1"
    t.integer "pago_mensual_1"
    t.integer "meses_sin_pago_1"
    t.integer "pago_mensual_total"
    t.integer "monto_deuda_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financial_states", force: :cascade do |t|
    t.string "estado_financiero"
    t.integer "rut_person"
    t.string "dv_rut_person"
    t.integer "renta_mensual"
    t.integer "pago_mensual_total"
    t.integer "monto_deuda_total"
    t.date "fecha_actualizacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_causes", force: :cascade do |t|
    t.integer "id_causa"
    t.integer "rut_beneficiario"
    t.string "dv_rut_person"
    t.string "nombre_causa"
    t.text "descripcion"
    t.string "fundacion_u_ong_relacionada"
    t.string "asesor_asignado"
    t.integer "puntaje_causa"
    t.integer "rut_beneficiario_causa"
    t.string "dv_rut_benef"
    t.string "tipo_causa"
    t.string "tamano_causa"
    t.date "fecha_ingreso_causa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.date "fecha_nacimiento"
    t.string "direccion"
    t.string "comuna"
    t.string "region"
    t.string "telefono"
    t.string "email"
    t.string "profesion_u_oficio"
    t.string "renta_mensual"
    t.string "rut"
    t.string "dv_rut_person"
    t.string "rut_empleador"
    t.string "dv_rut_emp"
    t.string "empleador"
    t.string "desafios_en_curso"
    t.string "estado_financiero"
    t.string "id_desafio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
