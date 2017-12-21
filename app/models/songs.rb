class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqiness: true
  validates :released, inclusion: {in: (true false)}
end
