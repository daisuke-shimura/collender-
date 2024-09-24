class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :week_id
      t.integer :event_id

      t.timestamps
    end
  end
end
