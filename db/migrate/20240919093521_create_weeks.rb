class CreateWeeks < ActiveRecord::Migration[7.1]
  def change
    create_table :weeks do |t|
      t.integer :event_id
      t.string :time1
      t.string :time2
      t.string :time3
      t.string :time4
      t.string :time5
      t.string :time6
      t.string :time7
      t.timestamps
    end
  end
end
