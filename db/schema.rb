§# This file is auto-generated from the current state of the database. Instead
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

ActiveRecord::Schema.define(version: 2019_08_26_183307) do

  create_table "dishes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dishes_sections", id: false, force: :cascade do |t|
    t.integer "section_id", null: false
    t.integer "dish_id", null: false
    t.index ["dish_id"], name: "index_dishes_sections_on_dish_id"
    t.index ["section_id"], name: "index_dishes_sections_on_section_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus_sections", id: false, force: :cascade do |t|
    t.integer "menu_id", null: false
    t.integer "section_id", null: false
    t.index ["menu_id"], name: "index_menus_sections_on_menu_id"
    t.index ["section_id"], name: "index_menus_sections_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
