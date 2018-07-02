class Song < ActiveRecord::Base
  belongs_to :playlist
  # validates :title, presence: true  -this is identical to line 4, but line 4 is prefered.
  validates_presence_of :title, :length
  #this cannot be 'nil'
  #title '' would still be valid

  def self.total_play_count
    sum(:play_count)
  end

  def self.average_play_count
    average(:play_count)
  end
end
