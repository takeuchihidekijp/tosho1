class CreateDocCategories < ActiveRecord::Migration
  def change
    create_table :doc_categories do |t|
      t.references :org, index: true, foreign_key: true
      t.string :name
      t.references :created_user, index: true, foreign_key: true
      t.references :updated_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
