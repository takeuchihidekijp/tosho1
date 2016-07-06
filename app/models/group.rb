class Group < ActiveRecord::Base
  has_many :user_groups, foreign_key: "group_id", dependent: :destroy
  has_many :users, through: :user_groups, source: :user

  # ancestor
  has_many :ancestor_categories, class_name: "GroupCategory", foreign_key: "anc_id"
  has_many :ancestors, through: :ancestor_groups, source: :des

  has_many :descendant_groups, class_name: "UserGroup", foreign_key: "des_id"
  has_many :descendant, through: :descendant_groups, source: :anc

  def add_user(user)
    user_groups.find_or_create_by(user_id: user.id)
  end

  def remove_user(user)
  end
end
