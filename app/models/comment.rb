class Comment < ActiveRecord::Base
  belongs_to :post
  has_ancestry
  validates :body, presence: true
end
