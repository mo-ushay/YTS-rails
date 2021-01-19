class Movie < ApplicationRecord
  has_and_belongs_to_many :language
  has_and_belongs_to_many :video_quality
  has_and_belongs_to_many :genre

  has_many :movie_roles
  has_many :roles, through: :movies
  has_many :feedback
  has_many :user, through: :feedback
  has_many :ratings
  has_many :user_rating, through: :ratings, class_name: :User
  has_many :linked_images, class_name: :Image, as: :imageable
  has_many :likes, class_name: :Like, as: :likeable

  belongs_to :created_by, class_name: :User, inverse_of: 'movies_created', foreign_key: 'user_id'
  
  has_one :profile_photo, class_name: :Image, as: :imageable

  validates :name, presence: true
  validates :synopsis, presence: true
  validates :release_date, presence: true
  validates :language, presence: true

  scope :order_by_downloads, -> { order(:downloads => desc)}
  scope :recent_releases, -> { order(:release_date => desc)}
  # Ex:- scope :active, -> {where(:active => true)}
  # Ex:- scope :active, -> {where(:active => true)}
end
