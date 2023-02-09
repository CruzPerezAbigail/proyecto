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

ActiveRecord::Schema[7.0].define(version: 2023_02_09_175025) do
  create_table "areas", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.integer "num_equipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "areas_id", null: false
    t.index ["areas_id"], name: "index_departamentos_on_areas_id"
  end

  create_table "departaments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.integer "num_equipos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "estatus"
    t.string "modelo"
    t.string "serial"
    t.string "observaciones"
    t.string "ram"
    t.string "disco_duro"
    t.date "fecharegistro"
    t.bigint "departament_id", null: false
    t.bigint "zone_id", null: false
    t.bigint "brand_id", null: false
    t.bigint "shape_id", null: false
    t.bigint "licence_id", null: false
    t.index ["brand_id"], name: "index_equipment_on_brand_id"
    t.index ["departament_id"], name: "index_equipment_on_departament_id"
    t.index ["licence_id"], name: "index_equipment_on_licence_id"
    t.index ["shape_id"], name: "index_equipment_on_shape_id"
    t.index ["zone_id"], name: "index_equipment_on_zone_id"
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
    t.index ["serie"], name: "serie_UNIQUE", unique: true
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

  create_table "licences", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.date "anio"
    t.string "num_licencia"
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

  create_table "maintenances", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.text "observaciones"
    t.string "tipo_mantenimiento"
    t.string "equipment_id", null: false
    t.bigint "zone_id", null: false
    t.bigint "physical_id", null: false
    t.bigint "tool_id", null: false
    t.bigint "resources_id", null: false
    t.string "usuarios_id", null: false
    t.index ["equipment_id"], name: "index_maintenances_on_equipment_id"
    t.index ["physical_id"], name: "index_maintenances_on_physical_id"
    t.index ["resources_id"], name: "index_maintenances_on_resources_id"
    t.index ["tool_id"], name: "index_maintenances_on_tool_id"
    t.index ["usuarios_id"], name: "index_maintenances_on_usuarios_id"
    t.index ["zone_id"], name: "index_maintenances_on_zone_id"
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

  create_table "physicals", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
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

  create_table "resources", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristica"
    t.integer "existencia"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shapes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "tools", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristicas"
    t.integer "existencia"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
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
    t.boolean "admin", default: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "zones", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departament_id", null: false
    t.index ["departament_id"], name: "index_zones_on_departament_id"
  end

  add_foreign_key "equipment", "brands"
  add_foreign_key "equipment", "departaments"
  add_foreign_key "equipment", "licences"
  add_foreign_key "equipment", "shapes"
  add_foreign_key "equipment", "zones"
  add_foreign_key "equipo12s", "areas", column: "id_areas"
  add_foreign_key "equipo12s", "departamentos", column: "id_departamentos"
  add_foreign_key "equipo12s", "licencia", column: "id_licencias", primary_key: "id_licencia"
  add_foreign_key "equipo12s", "marcas", column: "id_marcas", primary_key: "id_marca"
  add_foreign_key "equipo12s", "tipos", column: "id_tipo"
  add_foreign_key "maintenances", "equipment"
  add_foreign_key "maintenances", "physicals"
  add_foreign_key "maintenances", "resources", column: "resources_id"
  add_foreign_key "maintenances", "tools"
  add_foreign_key "maintenances", "usuarios", column: "usuarios_id"
  add_foreign_key "maintenances", "zones"
  add_foreign_key "mantenimientos", "equipo12s", column: "serie", primary_key: "serie"
  add_foreign_key "mantenimientos", "herramienta", column: "id_herramienta", primary_key: "id_herramienta"
  add_foreign_key "mantenimientos", "insumos", column: "id_insumo", primary_key: "id_insumo"
  add_foreign_key "mantenimientos", "materiales", column: "id_materiales", primary_key: "id_material"
  add_foreign_key "mantenimientos", "usuarios", column: "rfc"
  add_foreign_key "reportes", "mantenimientos", column: "id_mantenimiento", primary_key: "id_mantenimiento", name: "id_mantenimiento"
  add_foreign_key "solicituds", "usuarios", column: "rfc"
  add_foreign_key "zones", "departaments"
end
