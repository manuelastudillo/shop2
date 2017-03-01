# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170301012902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"

  create_table "brands", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "provincia_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.string   "comision"
    t.string   "descuento"
    t.integer  "precio_venta"
    t.string   "precio_compra"
    t.string   "foto"
    t.integer  "proveedor_id"
    t.string   "descripcion"
    t.integer  "brand_id"
    t.integer  "unit_id"
    t.integer  "category_id"
    t.integer  "stock"
    t.integer  "min_stock"
    t.integer  "precio"
    t.string   "slug"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "items", ["brand_id"], name: "index_items_on_brand_id", using: :btree
  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree
  add_index "items", ["proveedor_id"], name: "index_items_on_proveedor_id", using: :btree
  add_index "items", ["unit_id"], name: "index_items_on_unit_id", using: :btree

  create_table "proveedors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "razon_social"
    t.string   "rut"
    t.string   "domicilio"
    t.integer  "telegono1"
    t.integer  "telefono2"
    t.integer  "web"
    t.integer  "mail"
    t.string   "descripcion"
    t.string   "slug"
    t.integer  "comuna_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "proveedors", ["comuna_id"], name: "index_proveedors_on_comuna_id", using: :btree

  create_table "provincias", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regiones", force: :cascade do |t|
    t.string   "nombre"
    t.string   "corfo"
    t.string   "codigo"
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "nombre"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "nombre"
    t.string   "calle"
    t.integer  "telefono"
    t.integer  "telefono1"
    t.integer  "rol_id"
    t.integer  "comuna_id"
    t.datetime "fechaingreso"
    t.integer  "sueldo"
    t.string   "rut"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "comunas", "provincias"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "proveedors"
  add_foreign_key "items", "units"
  add_foreign_key "proveedors", "comunas"
  add_foreign_key "provincias", "regiones", column: "region_id"
  add_foreign_key "users", "comunas"
end
