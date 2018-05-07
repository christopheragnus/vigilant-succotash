class Post < ApplicationRecord
  belongs_to :musician
  validates :musician_id, presence:true
  validates :type, presence: true
end
