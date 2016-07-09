class DocRef < ActiveRecord::Base
  belongs_to :doc
  belongs_to :user
end
