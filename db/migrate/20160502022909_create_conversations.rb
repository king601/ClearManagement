class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :technician, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
