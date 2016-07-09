class Doc < ActiveRecord::Base
  belongs_to :doc_catgory
  has_many :doc_refs
  belongs_to :user
end
