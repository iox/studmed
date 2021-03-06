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

ActiveRecord::Schema.define(version: 20170324132543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinicals", force: :cascade do |t|
    t.text     "inspection"
    t.text     "palpation"
    t.text     "percussion"
    t.text     "auscultation"
    t.integer  "illness_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "anamnesis"
  end

  create_table "differentials", force: :cascade do |t|
    t.integer  "illness_id"
    t.string   "differential_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.text     "etio_and_pato"
    t.string   "incidence"
    t.string   "category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
    t.text     "description"
    t.string   "synonyms"
    t.text     "blood_sample"
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "illness_id"
    t.string   "xray"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "mri"
    t.string   "ct"
    t.string   "pet"
    t.string   "pet_mri"
    t.string   "ultrasound"
  end

  create_table "treatments", force: :cascade do |t|
    t.text     "medical"
    t.text     "surgical"
    t.integer  "illness_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
