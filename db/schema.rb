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

ActiveRecord::Schema.define(version: 2021_07_05_115810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "postalCode"
    t.string "country"
    t.string "houseNumber"
    t.string "googleMapUrl"
  end

  create_table "contractTypes", force: :cascade do |t|
    t.string "name"
  end

  create_table "entrepriseAdresses", force: :cascade do |t|
    t.bigint "entreprises_id"
    t.bigint "adresses_id"
    t.index ["adresses_id"], name: "index_entrepriseAdresses_on_adresses_id"
    t.index ["entreprises_id"], name: "index_entrepriseAdresses_on_entreprises_id"
  end

  create_table "entreprises", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.string "contactMail"
    t.string "contactPhone"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "name"
  end

  create_table "favouriteEntreprises", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "users_id"
    t.bigint "entreprises_id"
    t.index ["entreprises_id"], name: "index_favouriteEntreprises_on_entreprises_id"
    t.index ["users_id"], name: "index_favouriteEntreprises_on_users_id"
  end

  create_table "favouriteJobs", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "jobs_id"
    t.bigint "users_id"
    t.index ["jobs_id"], name: "index_favouriteJobs_on_jobs_id"
    t.index ["users_id"], name: "index_favouriteJobs_on_users_id"
  end

  create_table "jobApplieds", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "jobs_id"
    t.bigint "users_id"
    t.index ["jobs_id"], name: "index_jobApplieds_on_jobs_id"
    t.index ["users_id"], name: "index_jobApplieds_on_users_id"
  end

  create_table "jobSectors", force: :cascade do |t|
    t.bigint "sectors_id"
    t.bigint "jobs_id"
    t.index ["jobs_id"], name: "index_jobSectors_on_jobs_id"
    t.index ["sectors_id"], name: "index_jobSectors_on_sectors_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "dateAdded"
    t.string "expectations"
    t.string "description"
    t.bigint "entreprises_id"
    t.bigint "adresses_id"
    t.bigint "experiences_id"
    t.bigint "contractTypes_id"
    t.index ["adresses_id"], name: "index_jobs_on_adresses_id"
    t.index ["contractTypes_id"], name: "index_jobs_on_contractTypes_id"
    t.index ["entreprises_id"], name: "index_jobs_on_entreprises_id"
    t.index ["experiences_id"], name: "index_jobs_on_experiences_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
  end

  create_table "socialContacts", force: :cascade do |t|
    t.string "name"
    t.string "profilLink"
    t.bigint "entreprises_id"
    t.index ["entreprises_id"], name: "index_socialContacts_on_entreprises_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "firstname", default: "", null: false
    t.string "lastname", default: "", null: false
    t.date  "birthdate", default: "", null: false
    t.bigint "adresses_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["adresses_id"], name: "index_users_on_adresses_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "entrepriseAdresses", "adresses", column: "adresses_id"
  add_foreign_key "entrepriseAdresses", "entreprises", column: "entreprises_id"
  add_foreign_key "favouriteEntreprises", "entreprises", column: "entreprises_id"
  add_foreign_key "favouriteEntreprises", "users", column: "users_id"
  add_foreign_key "favouriteJobs", "jobs", column: "jobs_id"
  add_foreign_key "favouriteJobs", "users", column: "users_id"
  add_foreign_key "jobApplieds", "jobs", column: "jobs_id"
  add_foreign_key "jobApplieds", "users", column: "users_id"
  add_foreign_key "jobSectors", "jobs", column: "jobs_id"
  add_foreign_key "jobSectors", "sectors", column: "sectors_id"
  add_foreign_key "jobs", "\"contractTypes\"", column: "contractTypes_id"
  add_foreign_key "jobs", "adresses", column: "adresses_id"
  add_foreign_key "jobs", "entreprises", column: "entreprises_id"
  add_foreign_key "jobs", "experiences", column: "experiences_id"
  add_foreign_key "socialContacts", "entreprises", column: "entreprises_id"
  add_foreign_key "users", "adresses", column: "adresses_id"
end
