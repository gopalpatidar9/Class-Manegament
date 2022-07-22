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

ActiveRecord::Schema[7.0].define(version: 2022_07_19_083455) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.string "answer_text"
    t.string "correct"
    t.string "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_id"
  end

  create_table "assingments", force: :cascade do |t|
    t.string "title"
    t.integer "points"
    t.datetime "duedate"
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "createclass_id"
    t.string "instruction"
    t.string "file"
  end

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "createclass_id"
  end

  create_table "createclasses", force: :cascade do |t|
    t.string "classname"
    t.string "subjectcode"
    t.string "branchcode"
    t.string "collegecode"
    t.integer "session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id"
    t.index ["teacher_id"], name: "index_createclasses_on_teacher_id"
  end

  create_table "createclasses_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "createclass_id", null: false
  end

  create_table "jionclasses", force: :cascade do |t|
    t.string "classname"
    t.string "collegecode"
    t.string "branchcode"
    t.string "subjectcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "students_id"
    t.integer "createclasses_id"
    t.index ["createclasses_id"], name: "index_joins_on_createclasses_id"
    t.index ["students_id"], name: "index_joins_on_students_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "massege"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "createclass_id"
    t.boolean "read"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id"
    t.index ["teacher_id"], name: "index_profiles_on_teacher_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_text"
    t.string "question_title"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "title"
    t.string "descripation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "createclass_id"
  end

  create_table "results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_student_classes", force: :cascade do |t|
    t.string "students"
    t.string "createclasses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studentassingments", force: :cascade do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "assingment_id"
    t.integer "student_id"
    t.string "student_name"
  end

  create_table "studentprofiles", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["student_id"], name: "index_studentprofiles_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "syllabuses", force: :cascade do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "createclass_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  create_table "timetables", force: :cascade do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "createclass_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
