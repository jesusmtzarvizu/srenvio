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

ActiveRecord::Schema.define(version: 2019_08_22_012505) do

  create_table "packages", force: :cascade do |t|
    t.string "tracking_number", limit: 50
    t.string "carrier", limit: 30
    t.string "length", limit: 10
    t.string "width", limit: 10
    t.string "height", limit: 10
    t.string "distance_unit", limit: 10
    t.string "mass_unit", limit: 10
    t.string "source_info", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
