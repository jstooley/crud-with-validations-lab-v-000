class Song < ActiveRecord::Base
  validates :title, presence: true
  validatse :title, uniqiness: true
end
