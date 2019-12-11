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

ActiveRecord::Schema.define(version: 2019_12_11_052324) do

  create_table "aiyl_aimaks", force: :cascade do |t|
    t.integer "oblast_id", null: false
    t.integer "district_id", null: false
    t.string "name"
    t.string "soate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id"], name: "index_aiyl_aimaks_on_district_id"
    t.index ["oblast_id"], name: "index_aiyl_aimaks_on_oblast_id"
  end

  create_table "districts", force: :cascade do |t|
    t.integer "oblast_id", null: false
    t.string "name"
    t.string "soate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["oblast_id"], name: "index_districts_on_oblast_id"
  end

  create_table "infra_projects", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "oblast_id"
    t.integer "district_id"
    t.integer "aiyl_aimak_id"
    t.integer "settlement_id"
    t.decimal "t_length"
    t.decimal "r_length"
    t.string "capacity"
    t.decimal "t_area"
    t.decimal "r_area"
    t.integer "b_households"
    t.integer "b_total"
    t.integer "b_women"
    t.decimal "cost_total"
    t.decimal "c_project"
    t.decimal "c_partners"
    t.decimal "c_total"
    t.index ["aiyl_aimak_id"], name: "index_infra_projects_on_aiyl_aimak_id"
    t.index ["district_id"], name: "index_infra_projects_on_district_id"
    t.index ["oblast_id"], name: "index_infra_projects_on_oblast_id"
    t.index ["settlement_id"], name: "index_infra_projects_on_settlement_id"
  end

  create_table "layers", force: :cascade do |t|
    t.string "title"
    t.string "layer_type"
    t.text "json"
    t.integer "infra_project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "zindex"
    t.index ["infra_project_id"], name: "index_layers_on_infra_project_id"
  end

  create_table "oblasts", force: :cascade do |t|
    t.string "name"
    t.string "soate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "settlements", force: :cascade do |t|
    t.integer "oblast_id", null: false
    t.integer "district_id", null: false
    t.integer "aiyl_aimak_id", null: false
    t.string "name"
    t.string "soate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aiyl_aimak_id"], name: "index_settlements_on_aiyl_aimak_id"
    t.index ["district_id"], name: "index_settlements_on_district_id"
    t.index ["oblast_id"], name: "index_settlements_on_oblast_id"
  end

  add_foreign_key "aiyl_aimaks", "districts"
  add_foreign_key "aiyl_aimaks", "oblasts"
  add_foreign_key "districts", "oblasts"
  add_foreign_key "infra_projects", "aiyl_aimaks"
  add_foreign_key "infra_projects", "districts"
  add_foreign_key "infra_projects", "oblasts"
  add_foreign_key "infra_projects", "settlements"
  add_foreign_key "layers", "infra_projects"
  add_foreign_key "settlements", "aiyl_aimaks"
  add_foreign_key "settlements", "districts"
  add_foreign_key "settlements", "oblasts"
end
