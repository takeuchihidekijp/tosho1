class DocCategory < ActiveRecord::Base
  belongs_to :org
  has_many :docs
  belongs_to :created_user, class_name: "User"
  belongs_to :updated_user, class_name: "User"
end
