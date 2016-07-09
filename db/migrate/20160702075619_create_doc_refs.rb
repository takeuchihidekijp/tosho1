class CreateDocRefs < ActiveRecord::Migration
  def change
    create_table :doc_refs do |t|
      t.references :doc, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :page_num
      t.string :from
      t.string :to

      t.timestamps null: false
    end
  end
end
