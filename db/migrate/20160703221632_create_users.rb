class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :customer, index: true, foreign_key: true
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :user_roll

      t.timestamps null: false
      t.index :email, unique: true # この行を追加
    end
  end
end
