class User < ActiveRecord::Base
  has_many :user_groups, foreign_key: "user_id", dependent: :destroy
  has_many :groups, through: :user_groups, source: :group
end
