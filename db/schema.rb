# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_21_142912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "export_types", force: :cascade do |t|
    t.string "type_code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exports", force: :cascade do |t|
    t.string "assigned_number"
    t.string "pedimento_number"
    t.integer "export_type_id", null: false
    t.decimal "total"
    t.decimal "iva"
    t.text "notes"
    t.date "export_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["export_type_id"], name: "index_exports_on_export_type_id"
  end

  create_table "exports_parts", force: :cascade do |t|
    t.integer "export_id", null: false
    t.integer "part_id", null: false
    t.integer "quantity"
    t.integer "imports_part_id"
    t.date "export_date"
  end

  create_table "import_types", force: :cascade do |t|
    t.string "type_code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "imports", force: :cascade do |t|
    t.string "assigned_number"
    t.string "pedimento_number"
    t.integer "import_type_id", null: false
    t.decimal "total"
    t.decimal "iva"
    t.text "notes"
    t.date "import_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "exchange_rate"
    t.index ["import_type_id"], name: "index_imports_on_import_type_id"
  end

  create_table "imports_parts", force: :cascade do |t|
    t.integer "import_id", null: false
    t.integer "part_id", null: false
    t.decimal "cost"
    t.string "country_of_origin"
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "part_id", null: false
    t.integer "quantity"
    t.integer "supplier_id", null: false
    t.integer "po_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["part_id"], name: "index_orders_on_part_id"
    t.index ["supplier_id"], name: "index_orders_on_supplier_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_number"
    t.text "description"
    t.string "hts"
    t.integer "lead_time"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exports", "export_types"
  add_foreign_key "imports", "import_types"
  add_foreign_key "orders", "parts"
  add_foreign_key "orders", "suppliers"
end
