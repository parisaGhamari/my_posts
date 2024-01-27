

ActiveRecord::Schema[7.1].define(version: 2024_01_27_210924) do
  create_table "pposts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
