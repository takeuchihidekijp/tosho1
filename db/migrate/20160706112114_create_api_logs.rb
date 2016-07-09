class CreateApiLogs < ActiveRecord::Migration
  def change
    create_table :api_logs do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
