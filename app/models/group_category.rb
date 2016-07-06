class GroupCategory < ActiveRecord::Base
  belongs_to :anc, class_name: "Group"
  belongs_to :des, class_name: "Group"
end
