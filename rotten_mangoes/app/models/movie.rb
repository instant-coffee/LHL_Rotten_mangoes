class Movie < ActiveRecord::Base

  has_many :reviews

  scope :with_title, -> (movie_title) { where("title LIKE ?", "#{movie_title}%") }
  scope :with_director, -> (movie_director) { where(director: movie_director) }
  scope :with_duration, -> (duration_criteria_range) { where(runtime_in_minutes: duration_criteria_range) }

  mount_uploader :image, MoviePosterUploader

  validates :title,
    presence: true

  validates :director,
    presence: true

  validates :runtime_in_minutes,
    numericality: { only_integer: true }

  validates :description,
    presence: true

  # validates :poster_image_url,
  #   presence: true

  validates :release_date,
  presence: true

  validate :release_date_is_in_the_future  

  def review_average
    reviews.sum(:rating_out_of_ten)/reviews.size if reviews.size > 0
  end

  protected

  def release_date_is_in_the_future
    if release_date.present?
      errors.add(:release_date, "should probably be in the future") if release_date < Date.today
    end
  end

end
