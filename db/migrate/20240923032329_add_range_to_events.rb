class AddRangeToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :start, :string
    add_column :events, :finish, :string
  end
end
