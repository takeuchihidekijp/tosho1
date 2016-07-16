class Doc < ActiveRecord::Base
  belongs_to :doc_catgory
  has_many :doc_refs
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
end
