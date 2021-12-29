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

ActiveRecord::Schema.define(version: 2019_10_26_144218) do

  create_table "brands", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "document"
  end

  create_table "colours", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "model_vehicles", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_model_vehicles_on_brand_id"
  end

  create_table "officials", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.integer "document_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position_id"
    t.index ["position_id"], name: "index_officials_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_type_id"
    t.index ["service_type_id"], name: "index_services_on_service_type_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "colour_id"
    t.integer "brand_id"
    t.integer "client_id"
    t.integer "model_vehicle_id"
    t.index ["brand_id"], name: "index_vehicles_on_brand_id"
    t.index ["client_id"], name: "index_vehicles_on_client_id"
    t.index ["colour_id"], name: "index_vehicles_on_colour_id"
    t.index ["model_vehicle_id"], name: "index_vehicles_on_model_vehicle_id"
  end

  create_table "work_orders", force: :cascade do |t|
    t.string "vehicle"
    t.string "official"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
