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

ActiveRecord::Schema.define(version: 2021_07_27_111652) do

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

  create_table "cvuploads", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entrepriseAdresses", force: :cascade do |t|
    t.bigint "entreprise_id"
    t.bigint "adresse_id"
    t.index ["adresse_id"], name: "index_entrepriseAdresses_on_adresse_id"
    t.index ["entreprise_id"], name: "index_entrepriseAdresses_on_entreprise_id"
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
    t.bigint "user_id"
    t.bigint "entreprise_id"
    t.index ["entreprise_id"], name: "index_favouriteEntreprises_on_entreprise_id"
    t.index ["user_id"], name: "index_favouriteEntreprises_on_user_id"
  end

  create_table "favouriteJobs", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "job_id"
    t.bigint "user_id"
    t.index ["job_id"], name: "index_favouriteJobs_on_job_id"
    t.index ["user_id"], name: "index_favouriteJobs_on_user_id"
  end

  create_table "jobApplieds", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "job_id"
    t.bigint "user_id"
    t.index ["job_id"], name: "index_jobApplieds_on_job_id"
    t.index ["user_id"], name: "index_jobApplieds_on_user_id"
  end

  create_table "jobSectors", force: :cascade do |t|
    t.bigint "sector_id"
    t.bigint "job_id"
    t.index ["job_id"], name: "index_jobSectors_on_job_id"
    t.index ["sector_id"], name: "index_jobSectors_on_sector_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "dateAdded"
    t.string "expectations"
    t.string "description"
    t.bigint "entreprise_id"
    t.bigint "adresse_id"
    t.bigint "experience_id"
    t.bigint "contractType_id"
    t.index ["adresse_id"], name: "index_jobs_on_adresse_id"
    t.index ["contractType_id"], name: "index_jobs_on_contractType_id"
    t.index ["entreprise_id"], name: "index_jobs_on_entreprise_id"
    t.index ["experience_id"], name: "index_jobs_on_experience_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
  end

  create_table "socialContacts", force: :cascade do |t|
    t.string "name"
    t.string "profilLink"
    t.bigint "entreprise_id"
    t.index ["entreprise_id"], name: "index_socialContacts_on_entreprise_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "firstname", default: "", null: false
    t.string "lastname", default: "", null: false
    t.date "birthdate", null: false
    t.bigint "adresse_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["adresse_id"], name: "index_users_on_adresse_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "entrepriseAdresses", "adresses", column: "adresse_id"
  add_foreign_key "entrepriseAdresses", "entreprises"
  add_foreign_key "favouriteEntreprises", "entreprises"
  add_foreign_key "favouriteEntreprises", "users"
  add_foreign_key "favouriteJobs", "jobs"
  add_foreign_key "favouriteJobs", "users"
  add_foreign_key "jobApplieds", "jobs"
  add_foreign_key "jobApplieds", "users"
  add_foreign_key "jobSectors", "jobs"
  add_foreign_key "jobSectors", "sectors"
  add_foreign_key "jobs", "\"contractTypes\"", column: "contractType_id"
  add_foreign_key "jobs", "adresses", column: "adresse_id"
  add_foreign_key "jobs", "entreprises"
  add_foreign_key "jobs", "experiences"
  add_foreign_key "socialContacts", "entreprises"
  add_foreign_key "users", "adresses", column: "adresse_id"
end
