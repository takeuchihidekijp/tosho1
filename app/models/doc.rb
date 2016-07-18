class Doc < ActiveRecord::Base
  belongs_to :doc_category
  accepts_nested_attributes_for :doc_category
  has_many :doc_refs
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
end
