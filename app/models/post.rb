class Post < ActiveRecord::Base

  validate :is_title_case
  before_validation :make_title_case
  belongs_to :author

  private

  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end

  def make_title_case
    self.title = self.title.titlecase
  end
  # Moved to PostHelper with argument of post because of association
  # def last_update
  #   post.update_at.strftime("Last update %A, %b %e, at %1:
  #   %M %p")
  # end 
end
