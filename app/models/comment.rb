class Comment < Feedback
  has_many :likes, class_name: :Like, as: :likeable

  scope :calc_total_likes, -> { left_outer_joins(:likes).group('feedbacks.id').count('likes.likeable_id') }
  scope :where_by_ids, ->(comments_ids) { where('feedbacks.id in (?)', comments_ids) }
end
