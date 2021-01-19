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

ActiveRecord::Schema.define(version: 2021_01_13_170731) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "movie_id"
    t.string "type"
    t.index ["movie_id"], name: "index_feedbacks_on_movie_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "genre_id", null: false
    t.index ["genre_id", "movie_id"], name: "index_genres_movies_on_genre_id_and_movie_id"
    t.index ["movie_id", "genre_id"], name: "index_genres_movies_on_movie_id_and_genre_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "imageable_type"
    t.integer "imageable_id"
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languages_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "language_id", null: false
    t.index ["language_id", "movie_id"], name: "index_languages_movies_on_language_id_and_movie_id"
    t.index ["movie_id", "language_id"], name: "index_languages_movies_on_movie_id_and_language_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string "likeable_type"
    t.integer "likeable_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["likeable_type", "likeable_id"], name: "index_likes_on_likeable"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "movie_roles", force: :cascade do |t|
    t.string "acting_as"
    t.string "role_played"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "movie_id"
    t.integer "actor_id"
    t.index ["actor_id"], name: "index_movie_roles_on_actor_id"
    t.index ["movie_id"], name: "index_movie_roles_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "downloads"
    t.text "synopsis"
    t.date "release_date"
    t.boolean "is_featured"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_movies_on_user_id"
  end

  create_table "movies_video_qualities", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "video_quality_id", null: false
    t.index ["movie_id", "video_quality_id"], name: "index_movies_video_qualities_on_movie_id_and_video_quality_id"
    t.index ["video_quality_id", "movie_id"], name: "index_movies_video_qualities_on_video_quality_id_and_movie_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_ratings_on_movie_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "introduction"
    t.string "name"
    t.string "abilities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_qualities", force: :cascade do |t|
    t.string "resolution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "feedbacks", "movies"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "movie_roles", "actors"
  add_foreign_key "movie_roles", "movies"
  add_foreign_key "movies", "users"
  add_foreign_key "ratings", "movies"
  add_foreign_key "ratings", "users"
end
