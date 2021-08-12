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

ActiveRecord::Schema.define(version: 2021_08_10_092224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "adresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "postalCode"
    t.string "country"
    t.string "houseNumber"
    t.string "googleMapUrl"
  end

  create_table "contracttypes", force: :cascade do |t|
    t.string "name"
  end

  create_table "cvuploads", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entrepriseadresses", force: :cascade do |t|
    t.bigint "entreprise_id"
    t.bigint "adresse_id"
    t.index ["adresse_id"], name: "index_entrepriseadresses_on_adresse_id"
    t.index ["entreprise_id"], name: "index_entrepriseadresses_on_entreprise_id"
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

  create_table "favouriteentreprises", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "user_id"
    t.bigint "entreprise_id"
    t.index ["entreprise_id"], name: "index_favouriteentreprises_on_entreprise_id"
    t.index ["user_id"], name: "index_favouriteentreprises_on_user_id"
  end

  create_table "favouritejobs", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "job_id"
    t.bigint "user_id"
    t.index ["job_id"], name: "index_favouritejobs_on_job_id"
    t.index ["user_id"], name: "index_favouritejobs_on_user_id"
  end

  create_table "jobapplieds", force: :cascade do |t|
    t.datetime "dateAdded"
    t.bigint "job_id"
    t.bigint "user_id"
    t.text "cvuser"
    t.index ["job_id"], name: "index_jobapplieds_on_job_id"
    t.index ["user_id"], name: "index_jobapplieds_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "dateAdded"
    t.string "expectations"
    t.string "description"
    t.bigint "entreprise_id"
    t.bigint "adresse_id"
    t.bigint "experience_id"
    t.bigint "contracttype_id"
    t.index ["adresse_id"], name: "index_jobs_on_adresse_id"
    t.index ["contracttype_id"], name: "index_jobs_on_contracttype_id"
    t.index ["entreprise_id"], name: "index_jobs_on_entreprise_id"
    t.index ["experience_id"], name: "index_jobs_on_experience_id"
  end

  create_table "jobsectors", force: :cascade do |t|
    t.bigint "sector_id"
    t.bigint "job_id"
    t.index ["job_id"], name: "index_jobsectors_on_job_id"
    t.index ["sector_id"], name: "index_jobsectors_on_sector_id"
  end

  create_table "personallinks", force: :cascade do |t|
    t.string "link"
    t.string "linkdescription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "image"
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.string "email"
    t.string "telephone"
    t.text "about"
    t.string "strength"
    t.string "skill"
    t.string "link"
    t.string "linkdescription"
    t.string "project"
    t.string "title"
    t.string "description"
    t.string "projectimage"
    t.string "projectvideo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
  end

  create_table "socialcontacts", force: :cascade do |t|
    t.string "name"
    t.string "profilLink"
    t.bigint "entreprise_id"
    t.index ["entreprise_id"], name: "index_socialcontacts_on_entreprise_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "entrepriseadresses", "adresses", column: "adresse_id"
  add_foreign_key "entrepriseadresses", "entreprises"
  add_foreign_key "favouriteentreprises", "entreprises"
  add_foreign_key "favouriteentreprises", "users"
  add_foreign_key "favouritejobs", "jobs"
  add_foreign_key "favouritejobs", "users"
  add_foreign_key "jobapplieds", "jobs"
  add_foreign_key "jobapplieds", "users"
  add_foreign_key "jobs", "adresses", column: "adresse_id"
  add_foreign_key "jobs", "contracttypes"
  add_foreign_key "jobs", "entreprises"
  add_foreign_key "jobs", "experiences"
  add_foreign_key "jobsectors", "jobs"
  add_foreign_key "jobsectors", "sectors"
  add_foreign_key "socialcontacts", "entreprises"
  add_foreign_key "users", "adresses", column: "adresse_id"
end
