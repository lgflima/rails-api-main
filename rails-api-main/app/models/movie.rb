class Movie < ApplicationRecord
  #validates :name, :released_at, presence: true OR
  validates_presence_of :name, :released_at
  #validates :name, uniqueness: {case_sensitive: false} OR
  validates_uniqueness_of :name, case_sensitive: false

  validate :_released_at_cannot_be_future
  def _released_at_cannot_be_future
    if released_at > Date.today
      errors.add(:released_at, 'cannot be future')
    end
  end

end
