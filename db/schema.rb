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

ActiveRecord::Schema[7.0].define(version: 2022_12_28_062059) do
  create_table "areas", primary_key: "id_area", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", primary_key: "id_departamento", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.integer "num_equipo"
    t.integer "id_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_area"], name: "fk_rails_b6ab1a9d32"
  end

  create_table "equipo12s", primary_key: "serie", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tipo"
    t.string "modelo"
    t.string "serial"
    t.string "observaciones"
    t.string "ram"
    t.string "disco_duro"
    t.integer "id_tipo"
    t.integer "id_marcas"
    t.integer "id_departamentos"
    t.integer "id_areas"
    t.string "id_licencias"
    t.string "estatus"
    t.date "fecharegistro"
    t.index ["id_areas"], name: "fk_rails_e1d6ec70cc"
    t.index ["id_departamentos"], name: "fk_rails_d14d8d8728"
    t.index ["id_licencias"], name: "fk_rails_db6fd01638"
    t.index ["id_marcas"], name: "fk_rails_447672c699"
    t.index ["id_tipo"], name: "fk_rails_ab1eaec3c4"
  end

  create_table "herramienta", primary_key: "id_herramienta", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristicas"
    t.integer "existencia"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insumos", primary_key: "id_insumo", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristicas"
    t.integer "existencia"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licencia", primary_key: "id_licencia", id: { type: :string, limit: 20 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.integer "anio"
    t.string "num_licencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mantenimientos", primary_key: "id_mantenimiento", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.text "observaciones"
    t.string "tipo_mantenimiento"
    t.string "serie"
    t.integer "id_departamento"
    t.string "rfc"
    t.integer "id_materiales"
    t.integer "id_herramienta"
    t.integer "id_insumo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_departamento"], name: "fk_rails_0fa01aa708"
    t.index ["id_herramienta"], name: "fk_rails_9f760d3b22"
    t.index ["id_insumo"], name: "fk_rails_11f2e81ae5"
    t.index ["id_materiales"], name: "fk_rails_86ffc5a6a9"
    t.index ["rfc"], name: "fk_rails_14944d4f12"
    t.index ["serie"], name: "fk_rails_2582c470a0"
  end

  create_table "marcas", primary_key: "id_marca", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materiales", primary_key: "id_material", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristicas"
    t.integer "existencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reportes", primary_key: "id_reporte", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "fecha"
    t.text "observaciones"
    t.string "tipo_problema"
    t.integer "id_mantenimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_mantenimiento"], name: "id_mantenimiento_idx"
  end

  create_table "solicituds", primary_key: "id_solicitud", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "area_solicitante"
    t.date "fecha"
    t.text "descripcion"
    t.string "rfc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rfc"], name: "fk_rails_f24fa999e5"
  end

  create_table "tipos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", primary_key: "rfc", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellidouno"
    t.string "apellidodos"
    t.string "role", default: "personal"
    t.integer "admin", default: 0
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "departamentos", "areas", column: "id_area", primary_key: "id_area"
  add_foreign_key "equipo12s", "areas", column: "id_areas", primary_key: "id_area"
  add_foreign_key "equipo12s", "departamentos", column: "id_departamentos", primary_key: "id_departamento"
  add_foreign_key "equipo12s", "licencia", column: "id_licencias", primary_key: "id_licencia"
  add_foreign_key "equipo12s", "marcas", column: "id_marcas", primary_key: "id_marca"
  add_foreign_key "equipo12s", "tipos", column: "id_tipo"
  add_foreign_key "mantenimientos", "departamentos", column: "id_departamento", primary_key: "id_departamento"
  add_foreign_key "mantenimientos", "equipo12s", column: "serie", primary_key: "serie"
  add_foreign_key "mantenimientos", "herramienta", column: "id_herramienta", primary_key: "id_herramienta"
  add_foreign_key "mantenimientos", "insumos", column: "id_insumo", primary_key: "id_insumo"
  add_foreign_key "mantenimientos", "materiales", column: "id_materiales", primary_key: "id_material"
  add_foreign_key "mantenimientos", "usuarios", column: "rfc", primary_key: "rfc"
  add_foreign_key "reportes", "mantenimientos", column: "id_mantenimiento", primary_key: "id_mantenimiento", name: "id_mantenimiento"
  add_foreign_key "solicituds", "usuarios", column: "rfc", primary_key: "rfc"
end
