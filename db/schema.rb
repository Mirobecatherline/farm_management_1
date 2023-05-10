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

ActiveRecord::Schema[7.0].define(version: 2023_05_09_075355) do
  create_table "coffeberries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.integer "factory_id", null: false
    t.string "name"
    t.string "status"
    t.integer "factoryfarms_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factory_id"], name: "index_expenditures_on_factory_id"
    t.index ["factoryfarms_id"], name: "index_expenditures_on_factoryfarms_id"
  end

  create_table "factories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factoryfarmberries", force: :cascade do |t|
    t.integer "kg"
    t.string "season"
    t.integer "coffeberries_id", null: false
    t.integer "factoryfarms_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffeberries_id"], name: "index_factoryfarmberries_on_coffeberries_id"
    t.index ["factoryfarms_id"], name: "index_factoryfarmberries_on_factoryfarms_id"
  end

  create_table "factoryfarms", force: :cascade do |t|
    t.integer "factory_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factory_id"], name: "index_factoryfarms_on_factory_id"
  end

  create_table "farmerberries", force: :cascade do |t|
    t.string "season"
    t.integer "kg"
    t.integer "farmers_id", null: false
    t.integer "coffeberries_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffeberries_id"], name: "index_farmerberries_on_coffeberries_id"
    t.index ["farmers_id"], name: "index_farmerberries_on_farmers_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.integer "phoneNo"
    t.integer "nationalId"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "workers", force: :cascade do |t|
    t.integer "factory_id", null: false
    t.string "name"
    t.string "role"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factory_id"], name: "index_workers_on_factory_id"
  end

  add_foreign_key "expenditures", "factories"
  add_foreign_key "expenditures", "factoryfarms", column: "factoryfarms_id"
  add_foreign_key "factoryfarmberries", "coffeberries", column: "coffeberries_id"
  add_foreign_key "factoryfarmberries", "factoryfarms", column: "factoryfarms_id"
  add_foreign_key "factoryfarms", "factories"
  add_foreign_key "farmerberries", "coffeberries", column: "coffeberries_id"
  add_foreign_key "farmerberries", "farmers", column: "farmers_id"
  add_foreign_key "workers", "factories"
end
