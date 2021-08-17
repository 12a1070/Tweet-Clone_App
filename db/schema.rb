ActiveRecord::Schema.define(version: 2021_08_16_055244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "murmurs", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
