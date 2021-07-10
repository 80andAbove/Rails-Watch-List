class List < ApplicationRecord
    has_many :bookmarks
    has_many :movies, dependent: :destroy
    validates :name, uniqueness: true, presence: true
end
