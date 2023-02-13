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

ActiveRecord::Schema[7.0].define(version: 2023_02_10_164204) do
  create_table "brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "licences", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.date "anio"
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

  create_table "physicals", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristicas"
    t.integer "existencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reportes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "fecha"
    t.text "observaciones"
    t.string "tipo_problema"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "maintenances_id", null: false
    t.index ["maintenances_id"], name: "index_reportes_on_maintenances_id"
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

  create_table "solicituds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "fecha"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "usuarios_id", null: false
    t.bigint "zone_id", null: false
    t.index ["usuarios_id"], name: "index_solicituds_on_usuarios_id"
    t.index ["zone_id"], name: "index_solicituds_on_zone_id"
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
  add_foreign_key "maintenances", "equipment"
  add_foreign_key "maintenances", "physicals"
  add_foreign_key "maintenances", "resources", column: "resources_id"
  add_foreign_key "maintenances", "tools"
  add_foreign_key "maintenances", "usuarios", column: "usuarios_id"
  add_foreign_key "maintenances", "zones"
  add_foreign_key "reportes", "maintenances", column: "maintenances_id"
  add_foreign_key "solicituds", "usuarios", column: "usuarios_id"
  add_foreign_key "solicituds", "zones"
  add_foreign_key "zones", "departaments"
end
