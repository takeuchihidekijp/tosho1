class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :title
      t.text :body
      t.references :doc_ref, index: true, foreign_key: true
      t.references :doc_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
