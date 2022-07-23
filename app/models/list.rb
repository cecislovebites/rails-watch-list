class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :restrict_with_exception
  validates_uniqueness_of :name
  validates_presence_of :name
end
