class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqiness: true
end
