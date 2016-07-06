class CreateGroupCategories < ActiveRecord::Migration
  def change
    create_table :group_categories do |t|
      t.references :anc, index: true, foreign_key: true
      t.references :des, index: true, foreign_key: true
      t.integer :depth

      t.timestamps null: false
      t.index [:anc_id, :des_id], unique: true
    end
  end
end
